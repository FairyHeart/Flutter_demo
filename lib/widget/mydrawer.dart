import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: MediaQuery(
        data: MediaQueryData(),
        child: Center(
          child: Text('data'),
        ),
      ),
    );
  }
}
