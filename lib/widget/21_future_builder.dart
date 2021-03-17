import 'package:flutter/material.dart';

class FutureBuilderPage extends StatefulWidget {
  @override
  FutureBuilderPageState createState() => new FutureBuilderPageState();
}

class FutureBuilderPageState extends State<FutureBuilderPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FutureBuilder'),
      ),
      body: Center(
        child: FutureBuilder(
          future: getData(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              if (snapshot.hasError) {
                return Text('error');
              } else {
                return Text(snapshot.data.toString());
              }
            } else {
              return CircularProgressIndicator();
            }
          },
        ),
      ),
    );
  }

  Future<String> getData() async {
    return Future.delayed(Duration(seconds: 3), () {
      return "互联网上获取的数据";
    });
  }
}
