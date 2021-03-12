import 'package:flutter/material.dart';

class ListViewPage extends StatefulWidget {
  @override
  ListViewPageState createState() => new ListViewPageState();
}

class ListViewPageState extends State<ListViewPage> {
  static String loading = 'loading';
  var _words = <String>[loading];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('ListView'),
        ),
        body: Column(
          children: [
            ListTile(
              title: Text('title'),
            ),
            Expanded(
              child: ListView.separated(
                itemBuilder: (context, index) {
                  if (_words[index] == loading) {
                    if (_words.length < 50) {
                      _load();
                      return Container(
                        padding: const EdgeInsets.all(16.0),
                        alignment: Alignment.center,
                        child: SizedBox(
                            width: 24.0,
                            height: 24.0,
                            child: CircularProgressIndicator(strokeWidth: 2.0)),
                      );
                    } else {
                      //已经加载了100条数据，不再获取数据。
                      return Container(
                          alignment: Alignment.center,
                          padding: EdgeInsets.all(16.0),
                          child: Text(
                            "没有更多了",
                            style: TextStyle(color: Colors.grey),
                          ));
                    }
                  }
                  return ListTile(
                    title: Text(_words[index]),
                  );
                },
                separatorBuilder: (context, index) =>
                    Divider(height: 1, color: Colors.red),
                itemCount: _words.length,
              ),
            ),
          ],
        ));
  }

  @override
  void initState() {
    super.initState();
  }

  _load() {
    Future.delayed(Duration(seconds: 3)).then((value) {
      var data = <String>[];
      for (int i = 0; i < 10; i++) {
        data.add('value${_words.length + i}');
      }
      setState(() {
        _words.addAll(data);
      });
    });
  }
}
