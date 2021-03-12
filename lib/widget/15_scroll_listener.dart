import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ScrollListenerPage extends StatefulWidget {
  @override
  ScrollListenerPageState createState() => new ScrollListenerPageState();
}

class ScrollListenerPageState extends State<ScrollListenerPage> {
  ScrollController _controller = ScrollController();
  bool toTop = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ScrollListener'),
      ),
      body: Scrollbar(
        child: ListView.builder(
          itemCount: 100,
          itemExtent: 50,
          controller: _controller,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text('$index'),
            );
          },
        ),
      ),
      floatingActionButton: !toTop
          ? null
          : FloatingActionButton(
              child: Icon(Icons.arrow_upward),
              onPressed: () {
                _controller.animateTo(.0,
                    duration: Duration(milliseconds: 200), curve: Curves.ease);
              }),
    );
  }

  @override
  void initState() {
    super.initState();
    _controller.addListener(() {
      print(_controller.offset);
      if (_controller.offset <= 1000 && toTop) {
        setState(() {
          toTop = false;
        });
      } else if (_controller.offset > 100 && !toTop) {
        setState(() {
          toTop = true;
        });
      }
    });
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }
}
