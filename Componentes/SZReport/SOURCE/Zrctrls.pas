unit ZRCtrls;

interface

uses Windows, Messages, SysUtils, Classes, Graphics, Controls,
     Forms, Dialogs, ExtCtrls, StdCtrls, DB, DBTables, Printers,
     ZReport, ZREval, ZREscape;

type
  TSZRFrameLine = class(TSZReportControl)
    private
      fAlignToBand: Boolean;
      fFrameStyle : TFrameStyle;
      procedure SetFrameStyle(Value: TFrameStyle);
      function  GetLength: Integer;
      function  FrameLine: String;
    protected
      procedure SetCharBounds(ALeft, ATop, AWidth, AHeight: Integer); override;
    public
      constructor Create(AOwner: TComponent); override;
      procedure Paint; override;
      procedure PrintTo(OfsX, OfsY: Integer); override;
    published
      property AlignToBand: Boolean read fAlignToBand write fAlignToBand default True;
      property FrameStyle: TFrameStyle read fFrameStyle write SetFrameStyle;
  end;

  TSZRCustomLabel = class(TSZReportControl)
    private
      { Private declarations }
      fLines       : TStringList;
      fAutoSize    : Boolean;
      fAutoStretch : Boolean;
      fWordWrap    : Boolean;
      fFormatting  : Boolean;
      procedure SetAutoSize(Value: Boolean);
      procedure SetAutoStretch(Value: Boolean);
      procedure SetWordWrap(Value: Boolean);
      procedure CMTextChanged(var Message: TMessage); message CM_TextChanged;
      function  GetLine(i: Integer): String;
    protected
      { Protected declarations }
      procedure AdjustBounds; override;
      procedure FormatLines;
      procedure Paint; override;
      procedure DoBeforePrint(var DoPrint: Boolean); override;
      procedure PrintTo(ParentX, ParentY: Integer); override;
      property Caption;
    public
      { Public declarations }
      constructor Create(AOwner: TComponent); override;
      destructor  Destroy; override;
    published
      { Published declarations }
      property Alignment;
      property AlignToBand;
      property AutoSize   : Boolean read fAutoSize write SetAutoSize default False;
      property AutoStretch: Boolean read fAutoStretch write SetAutoStretch default False;
      property Enabled;
      property FontStyle;
      property Frame;
      property BeforePrint;
      property AfterPrint;
      property WordWrap: Boolean read fWordWrap write SetWordWrap default False;
  end;

  TSZRLabel = class(TSZRCustomLabel)
    published
      property Caption;
  end;

  TSZRDBText = class(TSZRCustomLabel)
    private
      fDataSet      : TDataSet;
      fDataField    : String;
      DataSourceName: String[30];
      Field         : TField;
      FieldNo       : Integer;
      FieldOK       : Boolean;
      fBlankIfZero  : Boolean;
      procedure SetDataSet(Value: TDataSet);
      procedure SetDataField(Value : String);
    protected
      procedure DefineProperties(Filer: TFiler); override;
      procedure Loaded; override;
      procedure Notification(AComponent: TComponent; Operation: TOperation); override;
      procedure ReadValues(Reader : TReader); virtual;
      procedure WriteValues(Writer : TWriter); virtual;
      procedure DoBeforePrint(var DoPrint: Boolean); override;
      procedure Prepare; override;
      procedure Unprepare; override;
    public
      constructor Create(AOwner: TComponent); override;
    published
      property BlankIfZero: Boolean read fBlankIfZero write fBlankIfZero;
      property DataSet    : TDataSet read fDataSet write SetDataSet;
      property DataField  : string read fDataField write SetDataField;
  end;

  TSZRExpression = class(TSZRCustomLabel)
    private
      fEvaluator      : TSZREvaluator;
      fExpression     : String;
      fMaster         : TSZRControllerBand;
      fMask           : String;
      fResetAfterPrint: Boolean;
      fCurrency       : Boolean;
      function  GetValue : TSZREvValue;
      procedure SetExpression(Value : String);
      procedure SetMask(Value : String);
    protected
      procedure Prepare; override;
      procedure Unprepare; override;
      procedure MasterDataAdvance; override;
      procedure DoBeforePrint(var DoPrint: Boolean); override;
      procedure PrintTo(ParentX, ParentY : integer); override;
      procedure SetMaster(AComponent : TSZRControllerBand);
    public
      constructor Create(AOwner : TComponent); override;
      destructor Destroy; override;
      procedure Reset;
      property Value : TSZREvValue read GetValue;
    published
      property Currency: Boolean read fCurrency write fCurrency;
      property Master : TSZRControllerBand read fMaster write SetMaster;
      property ResetAfterPrint : Boolean read fResetAfterPrint write fResetAfterPrint;
      property Expression : String read fExpression write SetExpression;
      property Mask : String read fMask write SetMask;
  end;

  { TSZRSysData }
  TSZRSysDataType = (zrsTime,
                    zrsDate,
                    zrsDateTime,
                    zrsPageNumber,
                    zrsReportTitle,
                    zrsDetailCount,
                    zrsDetailNo);

  TSZRSysData = class(TSZRCustomLabel)
    private
      fData : TSZRSysDataType;
      fText : String;
      procedure SetData(Value : TSZRSysDataType);
      procedure SetText(Value : String);
      procedure CreateCaption;
    protected
      procedure DoBeforePrint(var DoPrint: Boolean); override;
    public
      constructor Create(AOwner : TComponent); override;
    published
      property Data : TSZRSysDataType read fData write SetData;
      property Text : String read fText write SetText;
  end;

implementation

uses ZRStrUtl, ZRPrntr, ZRConst;

{ TSZRCustomLabel }

constructor TSZRCustomLabel.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  fLines       := TStringList.Create;
  ControlStyle := ControlStyle + [csSetCaption];
  fWordWrap    := True;
end;

destructor TSZRCustomLabel.Destroy;
begin
  fLines.Free;
  inherited Destroy;
end;

procedure TSZRCustomLabel.FormatLines;

  procedure WrapWords(MaxLen: Integer);
  const
    WordDelims: TCharSet = [' '];
  var
    Item   : String;
    SubStr : String;
    i, W, P: Integer;
  begin
    i:= 0;
    while i < fLines.Count do
      begin
        if System.Length(fLines[i]) > MaxLen then
          begin
            Item  := fLines[i];
            P     := System.Length(Item) + 2;
            W     := WordCount(Item, WordDelims);
            while (W > 1) and (P > MaxLen+2) do
              begin
                P:= WordPosition(W, Item, WordDelims);
                if (P > MaxLen+2) then Dec(W);
              end;
            if W > 1 then
              SubStr:= ZRStrUtl.Left(Item, P-2)
            else
              begin
                SubStr:= ZRStrUtl.Left(fLines[i], MaxLen);
                P     := MaxLen + 1;
              end;
            fLines[i]:= Trim(SubStr);
            SubStr   := Copy(Item, P, System.Length(Item));
            fLines.Insert(i+1, Copy(Item, P, System.Length(Item)));
          end;
        Inc(i);
      end;
  end;

var
  i, MaxLen : Integer;
begin
  if (csDestroying in ComponentState) or (csLoading in ComponentState) or
     fFormatting or not Assigned(fLines) then Exit;
  fFormatting:= True;
  fLines.Text:= Text;
  if AutoSize then
    begin
      if Assigned(Parent) then
        MaxLen:= (Parent as TSZReportControl).FramedWidth - Frame.Width
      else
        MaxLen:= FramedWidth;
      WrapWords(MaxLen);
      MaxLen:= 1;
      if fLines.Count > 0 then
        for i:= 0 to fLines.Count-1 do
          if MaxLen < System.Length(fLines[i]) then MaxLen:= System.Length(fLines[i]);
      Width := Frame.Width  + MaxLen;
      Height:= Frame.Height + fLines.Count;
    end else
  if WordWrap then WrapWords(FramedWidth);
  for i:=0 to fLines.Count-1 do
    case Alignment of
      taLeftJustify : fLines[i]:= Trim(fLines[i]);
      taRightJustify: fLines[i]:= PadLeft  (Trim(fLines[i]), FramedWidth);
      taCenter      : fLines[i]:= PadCenter(Trim(fLines[i]), FramedWidth);
    end;
  Invalidate;
  fFormatting:= False;
end;

procedure TSZRCustomLabel.AdjustBounds;
begin
  inherited;
  FormatLines;
end;

procedure TSZRCustomLabel.CMTextChanged(var Message: TMessage);
begin
  inherited;
  AdjustBounds;
end;

procedure TSZRCustomLabel.SetAutoSize(Value: Boolean);
begin
  if fAutoSize <> Value then
    begin
      fAutoSize := Value;
      AdjustBounds;
    end;
end;

procedure TSZRCustomLabel.SetAutoStretch(Value: Boolean);
begin
  if fAutoStretch <> Value then
    begin
      fAutoStretch := Value;
      AdjustBounds;
    end;
end;

procedure TSZRCustomLabel.SetWordWrap(Value: Boolean);
begin
  if fWordWrap <> Value then
    begin
      fWordWrap := Value;
      AdjustBounds;
    end;
end;

function TSZRCustomLabel.GetLine(i: Integer): String;
begin
  Result:= ZRStrUtl.Left(fLines[i], FramedWidth);
end;

procedure TSZRCustomLabel.Paint;
var
  i: Integer;
begin
  if IsPrinting then Exit;
  inherited Paint;
  Canvas.Brush.Style := bsClear;
  for i:= 0 to FramedHeight-1 do
    if (i < fLines.Count) then DrawString(Frame.Left, Frame.Top + i, GetLine(i));
end;

procedure TSZRCustomLabel.DoBeforePrint(var DoPrint: Boolean);
var
  Limit : Integer;
begin
  inherited DoBeforePrint(DoPrint);
  Limit := (Parent as TSZRCustomBand).Length + (Parent as TSZRCustomBand).Frame.Top - Top;
  if Length > Limit then Length:= Limit;
  if AutoStretch and (fLines.Count + Frame.Height > Length) then Length:= fLines.Count + Frame.Height;
end;

procedure TSZRCustomLabel.PrintTo(ParentX, ParentY: Integer);
var
  i, X, Y: Integer;
  Limit  : Integer;

  function TimeToBreak: Boolean;
  begin
    Result:= (Y >= Limit) or                                         // ����� �� ������ �����
             (i >= FramedHeight) and not AutoStretch;                // ����� �� ���� ������
  end;
  
begin
  X     := FramedLeft;
  Y     := FramedTop;
  Limit := (Parent as TSZRCustomBand).Length;
  for i:= 0 to fLines.Count-1 do
    begin
      if TimeToBreak or not PrintString(ParentX+X, ParentY+Y, GetLine(i), FontStyle) then Break;
      Inc(Y);
    end;
end;

{ TSZRDBText }

constructor TSZRDBText.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  DataSourceName:= '';
end;

procedure TSZRDBText.SetDataSet(Value: TDataSet);
begin
  fDataSet:= Value;
  if Value <> nil then Value.FreeNotification(Self);
end;

procedure TSZRDBText.DefineProperties(Filer: TFiler);
begin
  Filer.DefineProperty('DataSet', ReadValues, WriteValues, False);
  inherited DefineProperties(Filer);
end;

procedure TSZRDBText.ReadValues(Reader : TReader);
begin
  DataSourceName := Reader.ReadIdent;
end;

procedure TSZRDBtext.WriteValues(Writer : TWriter);
begin
end;

procedure TSZRDBText.Notification(AComponent: TComponent; Operation: TOperation);
begin
  inherited Notification(AComponent, Operation);
  if (Operation = opRemove) then
    if AComponent = fDataSet then fDataSet:= nil;
end;

procedure TSZRDBText.SetDataField(Value : String);
begin
  fDataField:= Value;
  Caption   := Value;
end;

procedure TSZRDBText.Loaded;
var
  aComponent : TComponent;
begin
  inherited Loaded;
//  if DataSourceName<>'' then
//  begin
//    aComponent := Owner.FindComponent(DataSourceName);
//    if (aComponent <> nil) and (aComponent is TDataSource) then
//      DataSet:=TDataSource(aComponent).DataSet;
//  end;
end;

procedure TSZRDBText.Prepare;
begin
  inherited Prepare;
  if Assigned(fDataSet) then
    begin
      Field:= fDataSet.FindField(fDataField);
      if Field <> nil then
        begin
          FieldNo:= Field.Index;
          FieldOK:= True;
          if (Field is TMemoField) or (Field is TBlobField) then Caption:= '';
        end;
    end
  else
    begin
      Field  := nil;
      FieldOK:= False;
    end;
end;

procedure TSZRDBText.Unprepare;
begin
  Field:= nil;
  inherited Unprepare;
  if DataField <> '' then
    SetDataField(DataField)
  else
    SetDataField(Name);
end;


procedure TSZRDBText.DoBeforePrint(var DoPrint: Boolean);
begin
  if FieldOK then
    begin
      if fDataSet.DefaultFields then
        Field := fDataSet.Fields[FieldNo];
    end
  else
    Field := nil;
  if Assigned(Field) then
    try
      if (Field is TMemoField) or (Field is TBlobField) then
        Text := Field.AsString
      else
      if BlankIfZero and (Field is TNumericField) and
         ((Field as TNumericField).AsFloat < 1e-6) then
        Caption:= ''
      else
        Caption := Field.DisplayText;
    except
      Caption := '';
    end
  else
    Caption := '';
  inherited DoBeforePrint(DoPrint);
end;

{ TSZRExpression }

constructor TSZRExpression.Create(AOwner : TComponent);
begin
  inherited Create(AOwner);
  fEvaluator  := TSZREvaluator.Create;
  fExpression := '';
  fMask       := '';
end;

destructor TSZRExpression.Destroy;
begin
  fEvaluator.Free;
  inherited Destroy;
end;

function TSZRExpression.GetValue : TSZREvValue;
begin
  if fEvaluator.Prepared then
    Result := fEvaluator.Value
  else
    Result.Kind := valError;
  if Result.Kind = valError then
    Result.strResult := LoadStr(SzrErrorInExpr);
end;

procedure TSZRExpression.Reset;
begin
  fEvaluator.Reset;
end;

procedure TSZRExpression.SetMaster(AComponent : TSZRControllerBand);
begin
  fMaster := AComponent;
end;

procedure TSZRExpression.MasterDataAdvance;
begin
  inherited;
  fEvaluator.Aggregate := True;
  fEvaluator.Value;
  fEvaluator.Aggregate := False;
end;

procedure TSZRExpression.Prepare;
begin
  inherited Prepare;
  fEvaluator.DataSets := Report.AllDataSets;
  fEvaluator.Prepare(fExpression);
  if Assigned(fMaster) then
    Master.AddNotifyClient(Self)
  else
    if fEvaluator.IsAggreg then Report.AddNotifyClient(Self);
  Reset;
end;

procedure TSZRExpression.Unprepare;
begin
  fEvaluator.DataSets := nil;
  fEvaluator.Unprepare;
  inherited Unprepare;
  SetExpression(fExpression); { Reset component caption... }
end;

procedure TSZRExpression.DoBeforePrint(var DoPrint: Boolean);
var
  aValue : TSZREvValue;
begin
  aValue := fEvaluator.Value;
  case aValue.Kind of
    valInteger : Caption := FormatFloat(Mask, aValue.IntResult*1.0);
    valString  : Caption := aValue.strResult;
    valDouble  : if not Currency then
                  Caption := FormatFloat(Mask,aValue.DblResult)
                else
                  Caption := CurrToStrF(aValue.DblResult, ffCurrency, CurrencyDecimals);
    valDateTime: Caption:= FormatDateTime(Mask, aValue.datResult);
    valBoolean : if aValue.booResult then Caption := 'True' else Caption := 'False'; {<-- do not resource }
    valError   : Caption := fExpression;
  end;
  inherited DoBeforePrint(DoPrint);
end;

procedure TSZRExpression.PrintTo(ParentX, ParentY : Integer);
begin
  inherited PrintTo(ParentX, ParentY);
  if ResetAfterPrint then Reset;
end;

procedure TSZRExpression.SetExpression(Value : String);
begin
  fExpression := Value;
  if Value='' then
    Caption := '(' + LoadStr(SzrNone) + ')'
  else
    Caption := Value;
  Invalidate;
end;

procedure TSZRExpression.SetMask(Value : String);
begin
  fMask := Value;
  SetExpression(Expression);
end;

{ TSZRSysData }

constructor TSZRSysData.Create(AOwner : TComponent);
begin
  inherited Create(AOwner);
  fText := '';
  CreateCaption;
end;

procedure TSZRSysData.DoBeforePrint(var DoPrint: Boolean);
begin
  case fData of
    zrsTime       : Caption := fText+FormatDateTime('t',SysUtils.Time);
    zrsDate       : Caption := fText+FormatDateTime('c',SysUtils.Date);
    zrsDateTime   : Caption := fText+FormatDateTime('c',Now);
    zrsPageNumber : Caption := fText+IntToStr(Report.PageNumber);
    zrsReportTitle: Caption := fText+Report.Title;
    zrsDetailCount: Caption := fText+IntToStr(Report.RecordCount);
    zrsDetailNo   : Caption := fText+IntToStr(Report.DetailNumber);
  end;
  inherited DoBeforePrint(DoPrint);
end;

procedure TSZRSysData.CreateCaption;
begin
  case fData of
    zrsTime       : Caption := fText+'('+LoadStr(SzrTime)+')';
    zrsDate       : Caption := fText+'('+LoadStr(SzrDate)+')';
    zrsDateTime   : Caption := fText+'('+LoadStr(SzrDateTime)+')';
    zrsPageNumber : Caption := fText+'('+LoadStr(SzrPageNum)+')';
    zrsReportTitle: Caption := fText+'('+LoadStr(SzrReportTitle)+')';
    zrsDetailCount: Caption := fText+'('+LoadStr(SzrDetailCount)+')';
    zrsDetailNo   : Caption := ftext+'('+LoadStr(SzrDetailNo)+')';
  end;
  Invalidate;
end;

procedure TSZRSysData.SetData(Value : TSZRSysDataType);
begin
  fData := Value;
  CreateCaption;
end;

procedure TSZRSysData.SetText(Value : String);
begin
  fText := Value;
  CreateCaption;
end;

{ TSZRFrameLine }

constructor TSZRFrameLine.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  ControlStyle:= ControlStyle - [csOpaque];
  fAlignToBand:= True;
  fFrameStyle := fsVertical;
end;

procedure TSZRFrameLine.SetFrameStyle(Value: TFrameStyle);
begin
  if fFrameStyle <> Value then
    begin
      fFrameStyle:= Value;
      AlignToBand:= True;
      AdjustBounds;
    end;
end;

function TSZRFrameLine.GetLength: Integer;
begin
  case FrameStyle of
    fsHorizontal: Result:= Width;
    fsVertical  : Result:= Height;
    fsCross     : Result:= 1;
  else
    Result := 1;
  end;
end;

{procedure TSZRFrameLine.SetLength(Value: Integer);
begin
  if not (FrameKind = fkCross) and (Value <> Length) then
    begin
      AlignToBand:= False;
      case FrameKind of
        fkHorizontal:
          begin
            if Value > (Parent as TSZReportControl).Width then
              Value:= (Parent as TSZReportControl).Width;
            Width  := Value;
          end;
        fkVertical:
          begin
            if Value > (Parent as TSZReportControl).Height then
              Value:= (Parent as TSZReportControl).Height;
            Height  := Value;
          end;
      end;
    end;
end;}

procedure TSZRFrameLine.SetCharBounds(ALeft, ATop, AWidth, AHeight: Integer);
begin
  if Assigned(Parent) then
    case FrameStyle of
      fsHorizontal:
        begin
          if AlignToBand then
            begin
              ALeft  := 0;
              AWidth := (Parent as TSZReportControl).Width;
            end;
          AHeight:= 1;
        end;
      fsVertical:
        begin
          if AlignToBand then
            begin
              ATop   := 0;
              AHeight:= (Parent as TSZReportControl).Height;
            end;
          AWidth := 1;
        end;
      fsCross:
        begin
          AWidth := 1;
          AHeight:= 1;
        end;
    end;
  inherited SetCharBounds(ALeft, ATop, AWidth, AHeight);
end;

function TSZRFrameLine.FrameLine: String;
begin
  if FrameStyle = fsHorizontal then
    Result:= Replicate(FrameChar[FrameStyle], GetLength)
  else
    Result:= FrameChar[FrameStyle];
end;

procedure TSZRFrameLine.Paint;
var
  H, i: Integer;
  S      : String;
begin
  if IsPrinting then Exit;
  with Canvas do
    begin
      Brush.Style := bsSolid;
      Brush.Color := clReportControl;
      FillRect(ClientRect);
      Brush.Style := bsClear;
    end;
  S:= FrameLine;
  if FrameStyle = fsVertical then
    H:= (Parent as TSZReportControl).Height-1
  else
    H:= 0;
//  for i:= Top to Top+H do DrawString(0, i, S);
  for i:= 0 to H do DrawString(0, i, S);
end;

procedure TSZRFrameLine.PrintTo(OfsX, OfsY: Integer);
const
  Styles: array[Boolean] of TEscapeStyles = ([], [esFrame]);
var
  Limit, i: Integer;
  S       : String;
begin
  if FrameStyle = fsVertical then
    Limit:= (Parent as TSZRCustomBand).Length-1
  else
    Limit:= 0;
  S:= FrameLine;
  for i:= 0 to Limit do PrintString(OfsX+Left, OfsY+Top+i, S,
                        Styles[Report.ZRPrinter.Options.CorrectFrames]);
end;

end.


