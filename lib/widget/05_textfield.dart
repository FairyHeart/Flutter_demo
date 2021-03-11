import 'package:flutter/material.dart';

class FieldPage extends StatefulWidget {
  @override
  FieldPageState createState() => new FieldPageState();
}

class FieldPageState extends State<FieldPage> {
  TextEditingController _controller;

  @override
  Widget build(BuildContext context) {
    _controller.addListener(() {
      print(_controller.text);
    });
    return Scaffold(
      appBar: AppBar(
        title: Text('FieldPage'),
      ),
      body: Column(
        children: [
          TextField(
            controller: _controller,
            autofocus: true,
            decoration: InputDecoration(
              labelText: '用户名',
              hintText: 'input user name',
              prefixIcon: Icon(Icons.person),
            ),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
  }
}
