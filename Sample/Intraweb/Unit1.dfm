object FrmTeste: TFrmTeste
  Left = 0
  Top = 0
  Width = 555
  Height = 400
  RenderInvisibleControls = True
  AllowPageAccess = True
  ConnectionMode = cmAny
  OnCreate = IWAppFormCreate
  Background.Fixed = False
  LayoutMgr = IWTemplate
  HandleTabs = False
  LeftToRight = True
  LockUntilLoaded = True
  LockOnSubmit = True
  ShowHint = True
  DesignLeft = 2
  DesignTop = 2
  object BTNIGROWL: TIWButton
    AlignWithMargins = False
    Left = 216
    Top = 184
    Width = 120
    Height = 30
    Caption = 'BTNIGROWL'
    Color = clBtnFace
    FriendlyName = 'BTNIGROWL'
    OnAsyncClick = BTNIGROWLAsyncClick
  end
  object IWTemplate: TIWTemplateProcessorHTML
    TagType = ttIntraWeb
    Left = 368
    Top = 80
  end
end
