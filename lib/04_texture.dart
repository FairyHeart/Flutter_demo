import 'package:flutter/material.dart';

class TexturePage extends StatefulWidget {
  @override
  TexturePageState createState() => new TexturePageState();
}

class TexturePageState extends State<TexturePage> with WidgetsBindingObserver {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Texture'),
      ),
    );
  }
}
