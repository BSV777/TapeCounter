�
 TTAPELISTFORM 0j  TPF0TTapeListFormTapeListFormLeftTop�BorderIcons BorderStylebsNoneCaptionTapeListFormClientHeight� ClientWidth!Color	clBtnFaceFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameTahoma
Font.Style 	FormStylefsStayOnTopOldCreateOrder	OnShowFormShowPixelsPerInch`
TextHeight TPanelPanel2Left Top Width!Height� AlignalClient
BevelOuterbvNoneBorderStylebsSingleCaptionPanel2Ctl3DParentCtl3DTabOrder  	TDBGridEh	DBGridEh1Left Top WidthHeight� AlignalClientBorderStylebsNone
DataSourceDataSource1Flat	Font.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameTahoma
Font.Style FooterColorclWindowFooterFont.CharsetDEFAULT_CHARSETFooterFont.ColorclWindowTextFooterFont.Height�FooterFont.NameTahomaFooterFont.Style HorzScrollBar.VisibleOptionsdgTitlesdgColumnResize
dgColLinesdgTabsdgRowSelectdgConfirmDeletedgCancelOnExit 	OptionsEh
dghFixed3DdghHighlightFocusdghClearSelectiondghTraceColSizing 
ParentFontTabOrder TitleFont.CharsetDEFAULT_CHARSETTitleFont.ColorclWindowTextTitleFont.Height�TitleFont.NameTahomaTitleFont.Style UseMultiTitle	VertScrollBar.Tracking	OnColWidthsChangedDBGridEh1ColWidthsChanged
OnDblClickDBGridEh1DblClickColumns	AlignmenttaCenterEditButtons 	FieldNameSP8722Footers Title.Caption   Номер рулона 	AlignmenttaCenterEditButtons 	FieldNameCOLUMN3Footers Title.Caption,   Партия|Дата поступленияWidthV 	AlignmenttaCenterEditButtons 	FieldNameDOCNOFooter.FieldNameSP8722Footers Title.Caption*   Партия|Номер документаWidthR    TPanelPanel1LeftTop WidthHeight� AlignalRight
BevelOuterbvNoneTabOrder TSpeedButtonSpeedButton1LeftTop WidthHeight
Glyph.Data
�   �   BM�       v   (               �                       �  �   �� �   � � ��  ��� ���   �  �   �� �   � � ��  ��� wwwwwwwwwwDwwwwwwt"GwwwwwB"$wwwwt"""GwwwB"�"$www"*z"$www��w�"Gwwzwwz"$wwwwww�"Gwwwwwz"$wwwwww�"Gwwwwwz"$wwwwww�$wwwwwwz"wwwwwww�OnClickSpeedButton1Click  TSpeedButtonSpeedButton2LeftTopWidthHeight
Glyph.Data
�   �   BM�       v   (               �                       �  �   �� �   � � ��  ��� ���   �  �   �� �   � � ��  ��� w�wwwwwwy�ww�wwywy�wy��ww�wwy�www�wwwwq�wwwwy�wwww��wwwywww����ww�wywwyww�wwwwwwywwwwwwwwwOnClickSpeedButton2Click    TDataSourceDataSource1DataSetQuery1Left2Top�   TQueryQuery1Active	DatabaseNameLPackSQL.StringsbSELECT     DT1582.SP8722, _1SJOURN.DOCNO, CONVERT(DateTime, LEFT(_1SJOURN.DATE_TIME_IDDOC, 8),112)FROM         DT1582 INNER JOINH                      DT8796 ON DT1582.SP8722 = DT8796.SP8806 INNER JOIN?                      _1SJOURN ON DT1582.IDDOC = _1SJOURN.IDDOC LeftTop�    