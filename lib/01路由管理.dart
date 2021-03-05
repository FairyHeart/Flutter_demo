import 'package:flutter/material.dart';

class RoutePage extends StatelessWidget {
  final String id;

  RoutePage(this.id);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('New Page'),
      ),
      body: Center(
        child: Text('接收传递的值：$id'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).pop('返回的值');
        },
        child: Text('返回'),
      ),
    );
  }
}
