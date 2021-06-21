object FrmPreview: TFrmPreview
  Left = 522
  Top = 286
  ClientHeight = 651
  ClientWidth = 645
  Color = clBtnFace
  DoubleBuffered = True
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = False
  OnAfterMonitorDpiChanged = FormAfterMonitorDpiChanged
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnResize = FormResize
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter: TSplitter
    Left = 0
    Top = 145
    Width = 645
    Height = 6
    Cursor = crVSplit
    Align = alTop
    AutoSnap = False
    MinSize = 100
    OnMoved = SplitterMoved
    ExplicitTop = 329
    ExplicitWidth = 888
  end
  object PanelTop: TPanel
    Left = 0
    Top = 0
    Width = 645
    Height = 35
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 2
    object ToolBar: TToolBar
      Left = 0
      Top = 0
      Width = 645
      Height = 35
      Align = alClient
      AutoSize = True
      ButtonHeight = 30
      ButtonWidth = 110
      EdgeInner = esNone
      EdgeOuter = esNone
      Images = SVGIconImageList
      List = True
      ShowCaptions = True
      TabOrder = 0
      object ToolButtonShowText: TToolButton
        Left = 0
        Top = 0
        Cursor = crHandPoint
        AutoSize = True
        Caption = 'Nascondi XML'
        ImageIndex = 1
        ImageName = 'Hide-Text'
        Visible = False
        OnClick = ToolButtonShowTextClick
        OnMouseEnter = ToolButtonMouseEnter
        OnMouseLeave = ToolButtonMouseLeave
      end
      object ToolButtonZoomIn: TToolButton
        Left = 111
        Top = 0
        Cursor = crHandPoint
        Hint = 'Zoom + (aumento lo zoom)'
        AutoSize = True
        Caption = 'Zoom +'
        ImageIndex = 6
        ImageName = 'plus'
        OnClick = ToolButtonZoomInClick
        OnMouseEnter = ToolButtonMouseEnter
        OnMouseLeave = ToolButtonMouseLeave
      end
      object ToolButtonZoomOut: TToolButton
        Left = 190
        Top = 0
        Cursor = crHandPoint
        Hint = 'Zoom - (diminuisce lo zoom)'
        AutoSize = True
        Caption = 'Zoom -'
        ImageIndex = 7
        ImageName = 'minus'
        OnClick = ToolButtonZoomOutClick
        OnMouseEnter = ToolButtonMouseEnter
        OnMouseLeave = ToolButtonMouseLeave
      end
      object ToolButtonHtml: TToolButton
        Left = 265
        Top = 0
        Cursor = crHandPoint
        Hint = 'Salva in formato HTML...'
        AutoSize = True
        Caption = 'In HTML...'
        ImageIndex = 14
        ImageName = 'save_html'
        OnClick = ToolButtonHtmlClick
        OnMouseEnter = ToolButtonMouseEnter
        OnMouseLeave = ToolButtonMouseLeave
      end
      object ToolButtonPDF: TToolButton
        Left = 355
        Top = 0
        Cursor = crHandPoint
        Hint = 'Salva in formato PDF...'
        AutoSize = True
        Caption = 'In PDF...'
        ImageIndex = 15
        ImageName = 'save_pdf'
        OnClick = ToolButtonPDFClick
        OnMouseEnter = ToolButtonMouseEnter
        OnMouseLeave = ToolButtonMouseLeave
      end
      object ToolButtonSettings: TToolButton
        Left = 436
        Top = 0
        Cursor = crHandPoint
        Hint = 'Modifica impostazioni...'
        AutoSize = True
        Caption = 'Impostazioni...'
        ImageIndex = 12
        ImageName = 'preferences-desktop'
        Visible = False
        OnClick = ToolButtonSettingsClick
        OnMouseEnter = ToolButtonMouseEnter
        OnMouseLeave = ToolButtonMouseLeave
      end
      object ToolButtonAbout: TToolButton
        Left = 550
        Top = 0
        Cursor = crHandPoint
        Hint = 'Mostra info...'
        AutoSize = True
        Caption = 'Info...'
        ImageIndex = 2
        ImageName = 'about'
        Visible = False
        OnClick = ToolButtonAboutClick
        OnMouseEnter = ToolButtonMouseEnter
        OnMouseLeave = ToolButtonMouseLeave
      end
      object SeparatorEditor: TToolButton
        Left = 619
        Top = 0
        Width = 8
        ImageName = 'settings'
        Style = tbsSeparator
      end
      object ToolButtonReformat: TToolButton
        Left = 627
        Top = 0
        Hint = 'Riformatta testo XML'
        AutoSize = True
        Caption = 'Formatta'
        ImageIndex = 10
        ImageName = 'Reformat'
        OnClick = ToolButtonReformatClick
        OnMouseEnter = ToolButtonMouseEnter
        OnMouseLeave = ToolButtonMouseLeave
      end
    end
  end
  object PanelXML: TPanel
    Left = 0
    Top = 35
    Width = 645
    Height = 110
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 1
    Visible = False
    object SynEdit: TSynEdit
      Left = 0
      Top = 0
      Width = 645
      Height = 110
      Align = alClient
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Consolas'
      Font.Pitch = fpFixed
      Font.Style = []
      TabOrder = 0
      CodeFolding.GutterShapeSize = 11
      CodeFolding.CollapsedLineColor = clGrayText
      CodeFolding.FolderBarLinesColor = clGrayText
      CodeFolding.IndentGuidesColor = clGray
      CodeFolding.IndentGuides = True
      CodeFolding.ShowCollapsedLine = False
      CodeFolding.ShowHintMark = True
      UseCodeFolding = False
      BorderStyle = bsNone
      Gutter.Font.Charset = DEFAULT_CHARSET
      Gutter.Font.Color = clWindowText
      Gutter.Font.Height = -11
      Gutter.Font.Name = 'Consolas'
      Gutter.Font.Style = []
      Gutter.ShowLineNumbers = True
      ReadOnly = True
      FontSmoothing = fsmNone
    end
  end
  object StatusBar: TStatusBar
    Left = 0
    Top = 630
    Width = 645
    Height = 21
    Panels = <>
    ParentFont = True
    SimplePanel = True
    SimpleText = 
      ' Anteprima Fattura Elettronica - Copyright '#169' 2021 - Ethea S.r.l.' +
      ' e Andrea Magni'
    SizeGrip = False
    UseSystemFont = False
  end
  object PanelBottom: TPanel
    Left = 0
    Top = 600
    Width = 645
    Height = 30
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 0
    object ToolBarAllegati: TToolBar
      Left = 0
      Top = 0
      Width = 645
      Height = 30
      Align = alClient
      AutoSize = True
      ButtonHeight = 30
      ButtonWidth = 81
      EdgeInner = esNone
      EdgeOuter = esNone
      Images = SVGIconImageList
      List = True
      ShowCaptions = True
      TabOrder = 0
      Transparent = True
    end
  end
  object HtmlViewer: THtmlViewer
    Left = 0
    Top = 151
    Width = 645
    Height = 449
    BorderStyle = htFocused
    HistoryMaxCount = 0
    NoSelect = False
    PrintMarginBottom = 2.000000000000000000
    PrintMarginLeft = 2.000000000000000000
    PrintMarginRight = 2.000000000000000000
    PrintMarginTop = 2.000000000000000000
    PrintScale = 1.000000000000000000
    ScrollBars = ssVertical
    Text = ''
    Align = alClient
    TabOrder = 4
    Touch.InteractiveGestures = [igPan]
    Touch.InteractiveGestureOptions = [igoPanSingleFingerHorizontal, igoPanSingleFingerVertical, igoPanInertia]
  end
  object SVGIconImageList: TVirtualImageList
    DisabledGrayscale = False
    DisabledSuffix = '_Disabled'
    Images = <
      item
        CollectionIndex = 42
        CollectionName = 'Show-Text'
        Disabled = False
        Name = 'Show-Text'
      end
      item
        CollectionIndex = 43
        CollectionName = 'Hide-Text'
        Disabled = False
        Name = 'Hide-Text'
      end
      item
        CollectionIndex = 23
        CollectionName = 'about'
        Disabled = False
        Name = 'about'
      end
      item
        CollectionIndex = 41
        CollectionName = 'Support'
        Disabled = False
        Name = 'Support'
      end
      item
        CollectionIndex = 0
        CollectionName = 'Style'
        Disabled = False
        Name = 'Style'
      end
      item
        CollectionIndex = 45
        CollectionName = 'Services'
        Disabled = False
        Name = 'Services'
      end
      item
        CollectionIndex = 26
        CollectionName = 'plus'
        Disabled = False
        Name = 'plus'
      end
      item
        CollectionIndex = 25
        CollectionName = 'Minus'
        Disabled = False
        Name = 'Minus'
      end
      item
        CollectionIndex = 6
        CollectionName = 'Search'
        Disabled = False
        Name = 'Search'
      end
      item
        CollectionIndex = 38
        CollectionName = 'export'
        Disabled = False
        Name = 'export'
      end
      item
        CollectionIndex = 19
        CollectionName = 'Reformat'
        Disabled = False
        Name = 'Reformat'
      end
      item
        CollectionIndex = 48
        CollectionName = 'attachment'
        Disabled = False
        Name = 'attachment'
      end
      item
        CollectionIndex = 28
        CollectionName = 'preferences-desktop'
        Disabled = False
        Name = 'preferences-desktop'
      end
      item
        CollectionIndex = 16
        CollectionName = 'Print-preview'
        Disabled = False
        Name = 'Print-preview'
      end
      item
        CollectionIndex = 57
        CollectionName = 'save_html'
        Disabled = False
        Name = 'save_html'
      end
      item
        CollectionIndex = 58
        CollectionName = 'save_pdf'
        Disabled = False
        Name = 'save_pdf'
      end
      item
        CollectionIndex = 59
        CollectionName = 'save_xml'
        Disabled = False
        Name = 'save_xml'
      end>
    ImageCollection = dmResources.SVGIconImageCollection
    Width = 24
    Height = 24
    Left = 384
    Top = 208
  end
  object SaveDialog: TSaveDialog
    Filter = 
      'File Fattura Elettronica (*.xml;*.p7m)|*.xml;*.p7m|Fogli di Stil' +
      'e (*.xsl)|*.xsl'
    Options = [ofOverwritePrompt, ofHideReadOnly, ofEnableSizing]
    Left = 284
    Top = 248
  end
end
