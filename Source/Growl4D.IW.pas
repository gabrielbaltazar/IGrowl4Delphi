unit Growl4D.IW;

interface

uses
  Growl4D.Interfaces,
  Growl4D.Types,
  IWForm,
  System.SysUtils;

type
  TGrow4DIW = class(TInterfacedObject, IGrowl4D)
  private
    FForm: TIWForm;
    FType: TGrowlType;
    FIcon: TGrowlIcon;
    FTitle: string;
    FText: string;
    FPositionX: TGrowlPosition;
    FPositionY: TGrowlPosition;
    FAnimationEnter: TGrowlEnterAnimation;
    FAnimationExit: TGrowlExitAnimation;
    FAnimationDelay: Integer;
  protected
    function &Type(AValue: TGrowlType): IGrowl4D; overload;
    function Icon(AValue: TGrowlIcon): IGrowl4D; overload;
    function Title(AValue: string): IGrowl4D; overload;
    function Text(AValue: string): IGrowl4D; overload;
    function PositionX(AValue: TGrowlPosition): IGrowl4D; overload;
    function PositionY(AValue: TGrowlPosition): IGrowl4D; overload;
    function AnimationEnter(AValue: TGrowlEnterAnimation): IGrowl4D; overload;
    function AnimationExit(AValue: TGrowlExitAnimation): IGrowl4D; overload;
    function AnimationDelay(AValue: Integer): IGrowl4D; overload;

    function &Type: TGrowlType; overload;
    function Icon: TGrowlIcon; overload;
    function Title: string; overload;
    function Text: string; overload;
    function PositionX: TGrowlPosition; overload;
    function PositionY: TGrowlPosition; overload;
    function AnimationEnter: TGrowlEnterAnimation; overload;
    function AnimationExit: TGrowlExitAnimation; overload;
    function AnimationDelay: Integer; overload;

    function Show(AInitialize: Boolean = True): IGrowl4D;
    function Initialize: IGrowl4D;
  public
    class function New(AForm: TIWForm): IGrowl4D;
    constructor Create(AForm: TIWForm);
  end;

implementation

{ TGrow4DIW }

function TGrow4DIW.AnimationDelay(AValue: Integer): IGrowl4D;
begin
  Result := Self;
  FAnimationDelay := AValue;
end;

function TGrow4DIW.&Type: TGrowlType;
begin
  Result := FType;
end;

function TGrow4DIW.&Type(AValue: TGrowlType): IGrowl4D;
begin
  Result := Self;
  FType := AValue;
end;

function TGrow4DIW.AnimationDelay: Integer;
begin
  Result := FAnimationDelay;
end;

function TGrow4DIW.AnimationEnter: TGrowlEnterAnimation;
begin
  Result := FAnimationEnter;
end;

function TGrow4DIW.AnimationEnter(AValue: TGrowlEnterAnimation): IGrowl4D;
begin
  Result := Self;
  FAnimationEnter := AValue;
end;

function TGrow4DIW.AnimationExit(AValue: TGrowlExitAnimation): IGrowl4D;
begin
  Result := Self;
  FAnimationExit := AValue;
end;

function TGrow4DIW.AnimationExit: TGrowlExitAnimation;
begin
  Result := FAnimationExit;
end;

constructor TGrow4DIW.Create(AForm: TIWForm);
begin
  FForm := AForm;
  Initialize;
end;

function TGrow4DIW.Icon(AValue: TGrowlIcon): IGrowl4D;
begin
  Result := Self;
  FIcon := AValue;
end;

function TGrow4DIW.Icon: TGrowlIcon;
begin
  Result := FIcon;
end;

function TGrow4DIW.Initialize: IGrowl4D;
begin
  FType := gtInfo;
  FIcon := giLineconsHeart;
  FTitle := 'Info';
  FText := 'Info Message';
  FPositionX := gpCenter;
  FPositionY := gpTop;
  FAnimationEnter := geaFadeIn;
  FAnimationExit := geaFadeOut;
  FAnimationDelay := 1000;
end;

class function TGrow4DIW.New(AForm: TIWForm): IGrowl4D;
begin
  Result := Self.Create(AForm);
end;

function TGrow4DIW.PositionX(AValue: TGrowlPosition): IGrowl4D;
begin
  Result := Self;
  FPositionX := AValue;
  if FPositionX in [gpTop, gpBottom] then
    FPositionX := gpCenter;
end;

function TGrow4DIW.PositionX: TGrowlPosition;
begin
  Result := FPositionX;
end;

function TGrow4DIW.PositionY: TGrowlPosition;
begin
  Result := FPositionY;
end;

function TGrow4DIW.PositionY(AValue: TGrowlPosition): IGrowl4D;
begin
  Result := Self;
  FPositionY := AValue;
  if FPositionY in [gpLeft, gpCenter, gpRight] then
    FPositionY := gpTop;
end;

function TGrow4DIW.Show(AInitialize: Boolean): IGrowl4D;
var
  LCommand: string;
  LType: string;
  LIcon: string;
  LPositionX: string;
  LPositionY: string;
  LAnimationEnter: string;
  LAnimationExit: string;
begin
  Result := Self;
  try
    LType := FType.ToString;
    LIcon := FIcon.ToString;
    LPositionX := FPositionX.ToString;
    LPositionY := FPositionY.ToString;
    LAnimationEnter := FAnimationEnter.ToString;
    LAnimationExit := FAnimationExit.ToString;

    LCommand := Format('ShowGrowl(%s, %s, %s, %s, %s, %s, %s, %s, %d)',
      [LType.QuotedString, FTitle.QuotedString, FText.QuotedString,
      LIcon.QuotedString, LPositionX.QuotedString, LPositionY.QuotedString,
      LAnimationEnter.QuotedString, LAnimationExit.QuotedString, FAnimationDelay]);

    FForm.WebApplication.CallBackResponse
      .AddJavaScriptToExecute(LCommand);
  finally
    if AInitialize then
      Initialize;
  end;
end;

function TGrow4DIW.Text: string;
begin
  Result := FText;
end;

function TGrow4DIW.Text(AValue: string): IGrowl4D;
begin
  Result := Self;
  FText := AValue;
end;

function TGrow4DIW.Title(AValue: string): IGrowl4D;
begin
  Result := Self;
  FTitle := AValue;
end;

function TGrow4DIW.Title: string;
begin
  Result := FTitle;
end;

end.
