import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ClipPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget picture = Image.asset(
      'images/bg.png',
      width: 100,
    );

    return Scaffold(
      appBar: AppBar(
        title: Text('Clip'),
      ),
      body: Center(
        child: Column(
          children: [
            picture,
            ClipOval(
              child: picture,
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: picture,
            ),
          ],
        ),
      ),
    );
  }
}
