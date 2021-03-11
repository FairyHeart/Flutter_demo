import 'package:flutter/material.dart';
import 'package:flutter_demo/widget/01_text.dart';
import 'package:flutter_demo/widget/02_button.dart';
import 'package:flutter_demo/widget/03_image.dart';
import 'package:flutter_demo/widget/04_checkbox.dart';
import 'package:flutter_demo/widget/05_form.dart';
import 'package:flutter_demo/widget/05_textfield.dart';
import 'package:flutter_demo/widget/06_row.dart';

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
