unit Unit1;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWColor, IWTypes, IWVCLComponent,
  IWBaseLayoutComponent, IWBaseContainerLayout, IWContainerLayout, IWTemplateProcessorHTML,
  Growl4D.Interfaces,
  Growl4D.Types,
  Growl4D.IW, Vcl.Controls, IWVCLBaseControl, IWBaseControl, IWBaseHTMLControl, IWControl,
  IWCompButton;

type
  TFrmTeste = class(TIWAppForm)
    IWTemplate: TIWTemplateProcessorHTML;
    BTNIGROWL: TIWButton;
    procedure BTNIGROWLAsyncClick(Sender: TObject; EventParams: TStringList);
    procedure IWAppFormCreate(Sender: TObject);
  public
    FGrowl: IGrowl4D;
  end;

implementation

{$R *.dfm}

procedure TFrmTeste.IWAppFormCreate(Sender: TObject);
begin
  FGrowl := TGrow4DIW.New(Self);
end;

procedure TFrmTeste.BTNIGROWLAsyncClick(Sender: TObject; EventParams: TStringList);
begin
  FGrowl.&Type(gtError)
    .Icon(giLineconsFood)
    .Title('Teste')
    .Text('Pedido Efetuado com sucesso')
    .Show(False);
end;

initialization
  TFrmTeste.SetAsMainForm;

end.
