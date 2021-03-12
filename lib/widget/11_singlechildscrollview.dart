import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SingleChildScrollViewPage extends StatelessWidget {
  final str = 'abcdefghyjklmnopqrstuvwxyz';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SingleChildScrollView'),
      ),
      body: Scrollbar(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(16),
          child: Column(
            children:
                str.split('').map((e) => Text(e, textScaleFactor: 2)).toList(),
          ),
        ),
      ),
    );
  }
}
