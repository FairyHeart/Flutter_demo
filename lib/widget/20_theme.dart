import 'package:flutter/material.dart';

class ThemePage extends StatefulWidget {
  @override
  ThemePageState createState() => new ThemePageState();
}

class ThemePageState extends State<ThemePage> {
  MaterialColor _themeColor = Colors.teal;

  @override
  Widget build(BuildContext context) {
    ThemeData themeData = Theme.of(context);

    return Theme(
      data: ThemeData(
          primarySwatch: _themeColor, //用于导航栏、FloatingActionButton的背景色等
          iconTheme: IconThemeData(color: _themeColor) //用于Icon颜色
          ),
      child: Scaffold(
        appBar: AppBar(
          title: Text('ThemePage'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //第一行Icon使用主题中的iconTheme
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.favorite),
                Icon(Icons.airport_shuttle),
                Text("  颜色跟随主题"),
              ],
            ),
            //为第二行Icon自定义颜色（固定为黑色)
            Theme(
              data: themeData.copyWith(
                iconTheme: themeData.iconTheme.copyWith(color: Colors.black),
              ),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(Icons.favorite),
                    Icon(Icons.airport_shuttle),
                    Text("  颜色固定黑色")
                  ]),
            )
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            ////切换主题
            setState(() {
              _themeColor =
                  _themeColor == Colors.teal ? Colors.blue : Colors.teal;
            });
          },
          child: Icon(Icons.palette),
        ),
      ),
    );
  }
}
