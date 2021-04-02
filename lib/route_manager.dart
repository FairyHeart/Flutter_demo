import 'package:flutter/material.dart';
import 'package:flutter_demo/03_file.dart';
import 'package:flutter_demo/04_texture.dart';
import 'package:flutter_demo/05_webview.dart';
import 'package:flutter_demo/pub/image_pick.dart';
import 'package:flutter_demo/pub/qr_code_scanner.dart';
import 'package:flutter_demo/pub/qr_page.dart';
import 'package:flutter_demo/widget/01_text.dart';
import 'package:flutter_demo/widget/02_button.dart';
import 'package:flutter_demo/widget/03_image.dart';
import 'package:flutter_demo/widget/04_checkbox.dart';
import 'package:flutter_demo/widget/05_form.dart';
import 'package:flutter_demo/widget/05_textfield.dart';
import 'package:flutter_demo/widget/06_row.dart';
import 'package:flutter_demo/widget/07_expanded.dart';
import 'package:flutter_demo/widget/08_wrap.dart';
import 'package:flutter_demo/widget/09_padding.dart';
import 'package:flutter_demo/widget/10_decoratedbox.dart';
import 'package:flutter_demo/widget/11_singlechildscrollview.dart';
import 'package:flutter_demo/widget/12_listview.dart';
import 'package:flutter_demo/widget/13_gridview.dart';
import 'package:flutter_demo/widget/14_customscrollview.dart';
import 'package:flutter_demo/widget/15_scroll_listener.dart';
import 'package:flutter_demo/widget/16_scroll_notification.dart';
import 'package:flutter_demo/widget/17_progress.dart';
import 'package:flutter_demo/widget/18_scaffold.dart';
import 'package:flutter_demo/widget/19_clip.dart';
import 'package:flutter_demo/widget/20_theme.dart';
import 'package:flutter_demo/widget/21_future_builder.dart';
import 'package:flutter_demo/widget/22_dialog.dart';

import '01路由管理.dart';
import '02资源管理.dart';
import 'main.dart';

class Path {
  static var _basePage = '/page_';
  static var routePage = _basePage + 'route';
  static var assetPage = _basePage + 'asset';
  static var textPage = _basePage + 'text';
  static var buttonPage = _basePage + 'button';
  static var imagePage = _basePage + 'image';
  static var boxPage = _basePage + 'box';
  static var fieldPage = _basePage + 'field';
  static var formPage = _basePage + 'form';
  static var rowPage = _basePage + 'row';
  static var expandedPage = _basePage + 'expanded';
  static var wrapPage = _basePage + 'wrap';
  static var paddingPage = _basePage + 'padding';
  static var decoratedBoxPage = _basePage + 'decoratedBox';
  static var singleChildScrollViewPage = _basePage + 'singleChildScrollView';
  static var listViewPage = _basePage + 'listView';
  static var gridViewPage = _basePage + 'gridView';
  static var customScrollViewPage = _basePage + 'customScrollView';
  static var scrollListenerPage = _basePage + 'scrollListener';
  static var scrollNotificationPage = _basePage + 'scrollNotification';
  static var progressPage = _basePage + 'progress';
  static var scaffoldPage = _basePage + 'scaffold';
  static var clipPage = _basePage + 'clip';
  static var themePage = _basePage + 'theme';
  static var futureBuilderPage = _basePage + 'futureBuilder';
  static var dialogPage = _basePage + 'dialog';
  static var filePage = _basePage + 'file';
  static var texturePage = _basePage + 'texture';
  static var webViewPage = _basePage + 'webView';
  static var imagePickPage = _basePage + 'imagePick';
  static var qrCodePage = _basePage + 'qr_code';
  static var qrPage = _basePage + 'qr';

}

Map<String, WidgetBuilder> getRoutes() {
  return {
    Path.routePage: (context) => RoutePage("bbb"),
    Path.assetPage: (context) => AssetPage(),
    Path.textPage: (context) => TextPage(),
    Path.buttonPage: (context) => ButtonPage(),
    Path.imagePage: (context) => ImagePage(),
    Path.boxPage: (context) => BoxPage(),
    Path.fieldPage: (context) => FieldPage(),
    Path.formPage: (context) => FormPage(),
    Path.rowPage: (context) => RowPage(),
    Path.expandedPage: (context) => ExpandedPage(),
    Path.wrapPage: (context) => WrapPage(),
    Path.paddingPage: (context) => PaddingPage(),
    Path.decoratedBoxPage: (context) => DecoratedBoxPage(),
    Path.singleChildScrollViewPage: (context) => SingleChildScrollViewPage(),
    Path.listViewPage: (context) => ListViewPage(),
    Path.gridViewPage: (context) => GridViewPage(),
    Path.customScrollViewPage: (context) => CustomScrollViewPage(),
    Path.scrollListenerPage: (context) => ScrollListenerPage(),
    Path.scrollNotificationPage: (context) => ScrollNotificationPage(),
    Path.progressPage: (context) => ProgressPage(),
    Path.scaffoldPage: (context) => ScaffoldPage(),
    Path.clipPage: (context) => ClipPage(),
    Path.themePage: (context) => ThemePage(),
    Path.futureBuilderPage: (context) => FutureBuilderPage(),
    Path.dialogPage: (context) => DialogPage(),
    Path.filePage: (context) => FilePage(),
    Path.texturePage: (context) => TexturePage(),
    Path.webViewPage: (context) => WebViewPage(),
    Path.imagePickPage: (context) => ImagePickPage(),
    Path.qrCodePage: (context) => QrCodePage(),
    Path.qrPage: (context) => QrPage(),

  };
}

List<Widget> children(BuildContext context) {
  return [
    MyText(
      '01路由管理',
      () => {_back(context)},
    ),
    _addText(context, '资源管理', Path.assetPage),
    _addText(context, 'Text', Path.textPage),
    _addText(context, 'Button', Path.buttonPage),
    _addText(context, 'Image', Path.imagePage),
    _addText(context, 'CheckBox', Path.boxPage),
    _addText(context, 'TextField', Path.fieldPage),
    _addText(context, 'Form', Path.formPage),
    _addText(context, 'Row/Column', Path.rowPage),
    _addText(context, 'Flex/Expanded', Path.expandedPage),
    _addText(context, 'Wrap', Path.wrapPage),
    _addText(context, 'Padding', Path.paddingPage),
    _addText(context, 'DecoratedBox', Path.decoratedBoxPage),
    _addText(context, 'SingleChildScrollView', Path.singleChildScrollViewPage),
    _addText(context, 'ListView', Path.listViewPage),
    _addText(context, 'GridView', Path.gridViewPage),
    _addText(context, 'CustomScrollView', Path.customScrollViewPage),
    _addText(context, 'ScrollListener', Path.scrollListenerPage),
    _addText(context, 'ScrollNotification', Path.scrollNotificationPage),
    _addText(context, 'Progress', Path.progressPage),
    _addText(context, 'Scaffold', Path.scaffoldPage),
    _addText(context, 'Clip', Path.clipPage),
    _addText(context, 'Theme', Path.themePage),
    _addText(context, 'FutureBuilder', Path.futureBuilderPage),
    _addText(context, 'Dialog', Path.dialogPage),
    _addText(context, 'File', Path.filePage),
    _addText(context, 'Texture', Path.texturePage),
    _addText(context, 'WebView', Path.webViewPage),
    _addText(context, 'ImagePick', Path.imagePickPage),
    _addText(context, 'qr_code_scanner', Path.qrCodePage),
  ];
}

Widget _addText(BuildContext context, String title, String path) {
  return MyText(
    title,
    () => {Navigator.of(context).pushNamed(path)},
  );
}

_back(BuildContext context) async {
  final backValue =
      await Navigator.of(context).pushNamed(Path.routePage, arguments: '传递的值');
  print(backValue);
  return backValue;
}
