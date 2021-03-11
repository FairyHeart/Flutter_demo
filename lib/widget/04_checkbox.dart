import 'package:flutter/material.dart';

class BoxPage extends StatefulWidget {
  @override
  BoxPageState createState() => new BoxPageState();
}

class BoxPageState extends State<BoxPage> {
  bool _switchSelected = false;
  bool _checkBoxSelected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BoxPage'),
      ),
      body: Center(
        child: Column(
          children: [
            Switch(
              value: _switchSelected,
              onChanged: (value) {
                setState(() {
                  _switchSelected = value;
                });
              },
            ),
            Checkbox(
              value: _checkBoxSelected,
              onChanged: (value) {
                setState(() {
                  _checkBoxSelected = value;
                });
              },
            )
          ],
        ),
      ),
    );
  }
}
