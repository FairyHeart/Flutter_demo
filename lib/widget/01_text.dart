import 'dart:ui';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class TextPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Text'),
        ),
        body: Column(
          children: [
            Text(
              'adlkjalkda',
              style: TextStyle(
                color: Colors.red,
                backgroundColor: Colors.cyanAccent,
              ),
            ),
            Text.rich(
              TextSpan(
                children: [
                  TextSpan(text: 'home'),
                  TextSpan(
                      text: 'https:www.baidu.com',
                      style: TextStyle(color: Colors.blue),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          debugPrint('click https');
                        }),
                ],
              ),
            ),
            createDefaultTextStyle(),
          ],
        ));
  }

  DefaultTextStyle createDefaultTextStyle() {
    return DefaultTextStyle(
        style: TextStyle(
          color: Colors.red,
          fontSize: 20.0,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text("hello world"),
            Text("I am Jack"),
            Text(
              "I am Jack",
              style: TextStyle(
                  inherit: false, //2.不继承默认样式
                  color: Colors.grey),
            ),
          ],
        ));
  }
}
