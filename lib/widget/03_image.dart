import 'package:flutter/material.dart';

class ImagePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ImagePage'),
      ),
      body: Center(
        child: Column(
          children: [
            Image(
              image: AssetImage('images/ic.png'),
              width: 100,
            ),
            Image.asset(
              'images/ic.png',
              width: 100,
            ),
            Image(
              image: NetworkImage(
                  'https://avatars2.githubusercontent.com/u/20411648?s=460&v=4'),
              width: 120,
            ),
            Image.network(
              'https://avatars2.githubusercontent.com/u/20411648?s=460&v=4',
              width: 100,
            ),
            Icon(
              Icons.more_horiz,
              color: Colors.green,
              size: 100,
            )
          ],
        ),
      ),
    );
  }
}
