import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProgressPage extends StatefulWidget {
  @override
  ProgressPageState createState() => new ProgressPageState();
}

class ProgressPageState extends State<ProgressPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Progress'),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            LinearProgressIndicator(
              value: null,
              valueColor: AlwaysStoppedAnimation(Colors.red),
            ),
            CircularProgressIndicator()
          ],
        ),
      ),
    );
  }
}
