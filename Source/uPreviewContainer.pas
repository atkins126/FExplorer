{******************************************************************************}
{                                                                              }
{       FExplorer: Shell extensions per Fattura Elettronica                    }
{       (Preview Panel, Thumbnail Icon, F.E.Viewer)                            }
{                                                                              }
{       Copyright (c) 2021-2022 (Ethea S.r.l.)                                 }
{       Author: Carlo Barazzetta                                               }
{                                                                              }
{       https://github.com/EtheaDev/FExplorer                                  }
{                                                                              }
{******************************************************************************}
{                                                                              }
{  Licensed under the Apache License, Version 2.0 (the "License");             }
{  you may not use this file except in compliance with the License.            }
{  You may obtain a copy of the License at                                     }
{                                                                              }
{      http://www.apache.org/licenses/LICENSE-2.0                              }
{                                                                              }
{  Unless required by applicable law or agreed to in writing, software         }
{  distributed under the License is distributed on an "AS IS" BASIS,           }
{  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.    }
{  See the License for the specific language governing permissions and         }
{  limitations under the License.                                              }
{                                                                              }
{                                                                              }
{  The Initial Developer of the Original Code is Rodrigo Ruz V.                }
{  Portions created by Rodrigo Ruz V. are Copyright 2011-2021 Rodrigo Ruz V.   }
{  All Rights Reserved.                                                        }
{******************************************************************************}
unit uPreviewContainer;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs;

type
  TPreviewContainer = class(TForm)
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    FPreviewHandler: TObject;
  public
    procedure SetFocusTabFirst;
    procedure SetFocusTabLast;
    procedure SetBackgroundColor(color: TColorRef);
    procedure SetBoundsRectAndPPI(const ARect: TRect;
      const AOldPPI, ANewPPI: Integer); virtual;
    procedure SetTextColor(color: TColorRef);
    procedure SetTextFont(const plf: TLogFont);
    property  PreviewHandler: TObject read FPreviewHandler write FPreviewHandler;
  end;

implementation

uses
  SynEdit,
  System.Math,
{$IFNDEF DISABLE_STYLES}
  Vcl.Styles.Ext,
  Vcl.Styles,
  Vcl.Themes,
{$ENDIF}
  uLogExcept,
  FExplorer.Settings;

{$R *.dfm}

procedure TPreviewContainer.SetFocusTabFirst;
begin
  SelectNext(nil, True, True);
end;

procedure TPreviewContainer.SetFocusTabLast;
begin
  SelectNext(nil, False, True);
end;

procedure TPreviewContainer.FormCreate(Sender: TObject);
var
  LSettings: TPreviewSettings;
begin
  TLogPreview.Add('TPreviewContainer.FormCreate'+
    'ScaleFactor: '+Self.ScaleFactor.ToString+
    'CurrentPPI '+Self.CurrentPPI.ToString);
  LSettings := TPreviewSettings.CreateSettings(nil);
  try
{$IFNDEF DISABLE_STYLES}
    if not IsStyleHookRegistered(TCustomSynEdit, TScrollingStyleHook) then
      TStyleManager.Engine.RegisterStyleHook(TCustomSynEdit, TScrollingStyleHook);

    if (Trim(LSettings.StyleName) <> '') and not SameText('Windows', LSettings.StyleName) then
      TStyleManager.TrySetStyle(LSettings.StyleName, False);
{$ENDIF}
  finally
    LSettings.Free;
  end;
  TLogPreview.Add('TPreviewContainer.FormCreate Done');
end;

procedure TPreviewContainer.FormDestroy(Sender: TObject);
begin
  TLogPreview.Add('TPreviewContainer.FormDestroy');
end;

procedure TPreviewContainer.SetBackgroundColor(color: TColorRef);
begin
end;

procedure TPreviewContainer.SetBoundsRectAndPPI(const ARect: TRect;
  const AOldPPI, ANewPPI: Integer);
begin
  if (ARect.Width <> 0) and (ARect.Height <> 0) then
  begin
    TLogPreview.Add('TPreviewContainer.SetBoundsRect:'+
    ' Visible: '+Self.Visible.Tostring+
      ' CurrentPPI:'+Self.CurrentPPI.ToString+
      ' AOldPPI:'+AOldPPI.ToString+
      ' ANewPPI:'+ANewPPI.ToString+
      ' Scaled:'+Self.Scaled.ToString+
      ' ARect.Width: '+ARect.Width.ToString+
      ' ARect.Height: '+ARect.Height.ToString);

      if ANewPPI <> AOldPPI then
      begin
        SetBounds(
          ARect.Left,
          ARect.Top,
          MulDiv(ARect.Width, ANewPPI, AOldPPI),
          MulDiv(ARect.Height, ANewPPI, AOldPPI));
      end
      else
      begin
        SetBounds(
          ARect.Left,
          ARect.Top,
          ARect.Width,
          ARect.Height);
      end;

    FCurrentPPI := ANewPPI;
  end;
end;

procedure TPreviewContainer.SetTextColor(color: TColorRef);
begin
end;

procedure TPreviewContainer.SetTextFont(const plf: TLogFont);
begin
end;

end.
