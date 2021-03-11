import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ButtonPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ButtonPage'),
      ),
      body: Center(
        child: Column(
          children: [
            _elevatedButton(),
            _textButton(),
            _outlineButton(),
            _iconButton()
          ],
        ),
      ),
    );
  }

  ElevatedButton _elevatedButton() {
    return ElevatedButton(
      onPressed: () => {},
      child: Text('ElevatedButton'),
    );
  }

  TextButton _textButton() {
    return TextButton(
      onPressed: () => {},
      child: Text('TextButton'),
    );
  }

  OutlinedButton _outlineButton() {
    return OutlinedButton(
      onPressed: () {},
      child: Text(('OutlinedButton')),
    );
  }

  IconButton _iconButton() {
    return IconButton(
      icon: Icon(Icons.thumb_up),
      onPressed: () {},
    );
  }
}
