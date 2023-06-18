unit Growl4D.Interfaces;

interface

uses
  Growl4D.Types;

type
  IGrowl4D = interface
    ['{EBA3C8A7-271D-4DF1-8109-2EAFAB6D0AE4}']
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
  end;

implementation

end.
