import 'package:flutter/material.dart';

class ScrollNotificationPage extends StatefulWidget {
  @override
  ScrollNotificationPageState createState() =>
      new ScrollNotificationPageState();
}

class ScrollNotificationPageState extends State<ScrollNotificationPage> {
  var _progress = '0%';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ScrollNotification'),
      ),
      body: Scrollbar(
        child: NotificationListener(
          onNotification: (ScrollNotification notification) {
            double progress = notification.metrics.pixels /
                notification.metrics.maxScrollExtent;
            setState(() {
              _progress = '${(progress * 100).toInt()}%';
            });
            return false; //true进度条将失效
          },
          child: Stack(
            alignment: Alignment.center,
            children: <Widget>[
              ListView.builder(
                  itemCount: 100,
                  itemExtent: 50.0,
                  itemBuilder: (context, index) {
                    return ListTile(title: Text("$index"));
                  }),
              CircleAvatar(
                //显示进度百分⽐
                radius: 30.0,
                child: Text(_progress),
                backgroundColor: Colors.black54,
              )
            ],
          ),
        ),
      ),
    );
  }
}
