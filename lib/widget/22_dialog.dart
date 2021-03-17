import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DialogPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DialogPage'),
      ),
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              _showAlertDialog(context);
            },
            child: Text('AlertDialog'),
          ),
          ElevatedButton(
            onPressed: () {
              _showSimpleDialog(context);
            },
            child: Text('SimpleDialog'),
          ),
          ElevatedButton(
            onPressed: () {
              _showDialog(context);
            },
            child: Text('Dialog'),
          ),
          ElevatedButton(
            onPressed: () {
              _showDialogStatus(context);
            },
            child: Text('Dialog状态管理'),
          ),
          ElevatedButton(
            onPressed: () {
              _showBottomDialog(context);
            },
            child: Text('底部Dialog'),
          ),
          ElevatedButton(
            onPressed: () {
              _showLoading(context);
            },
            child: Text('Loading Dialog'),
          ),
          ElevatedButton(
            onPressed: () {
              _showAndroidDateDialog(context);
            },
            child: Text('android date Dialog'),
          ),
          ElevatedButton(
            onPressed: () {
              _showIosDateDialog(context);
            },
            child: Text('ios date Dialog'),
          ),
        ],
      ),
    );
  }

  _showAlertDialog(BuildContext context) async {
    bool f = await showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text('提示'),
            content: Text("您确定要删除当前文件吗?"),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop(); // 关闭对话框
                },
                child: Text('取消'),
              ),
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop(true); //关闭对话框并返回true
                },
                child: Text('确定'),
              )
            ],
          );
        });
    if (f == null) {
      print('cancel');
    } else {
      print('confirm');
    }
  }

  void _showSimpleDialog(BuildContext context) async {
    int index = await showDialog(
        context: context,
        builder: (context) {
          return SimpleDialog(
            title: Text('请选择语言'),
            children: [
              SimpleDialogOption(
                onPressed: () {
                  Navigator.of(context).pop(1);
                },
                child: Text('中文简体'),
              ),
              SimpleDialogOption(
                onPressed: () {
                  Navigator.of(context).pop(2);
                },
                child: const Text('english'),
              ),
            ],
          );
        });
    print(index.toString());
  }

  _showDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        var child = Column(
          children: [
            ListTile(
              title: Text('choose'),
            ),
            Expanded(
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text('$index'),
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                  );
                },
                itemCount: 20,
              ),
            ),
          ],
        );
        return Dialog(
          child: child,
        );
      },
    );
  }

  bool withTree = false; // 复选框选中状态

  void _showDialogStatus(BuildContext context) {
    withTree = false; // 默认复选框不选中
    var reslut = showDialog<bool>(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text("提示"),
          content: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text("您确定要删除当前文件吗?"),
              /*StatefulBuilder(builder: (context, setState) {
                return Row(
                  children: <Widget>[
                    Text("同时删除子目录？"),
                    Checkbox(
                      value: withTree,
                      onChanged: (bool value) {
                        //复选框选中状态发生变化时重新构建UI
                        setState(() {
                          //更新复选框状态
                          withTree = !withTree;
                        });
                      },
                    ),
                  ],
                );
              })*/
              Builder(builder: (context) {
                return Row(
                  children: <Widget>[
                    Text("同时删除子目录？"),
                    Checkbox(
                      value: withTree,
                      onChanged: (bool? value) {
                        //复选框选中状态发生变化时重新构建UI
                        (context as Element).markNeedsBuild();
                        withTree = !withTree;
                      },
                    ),
                  ],
                );
              }),
            ],
          ),
          actions: <Widget>[
            TextButton(
              child: Text("取消"),
              onPressed: () => Navigator.of(context).pop(),
            ),
            TextButton(
              child: Text("删除"),
              onPressed: () {
                //执行删除操作
                Navigator.of(context).pop(withTree);
              },
            ),
          ],
        );
      },
    );
  }

  void _showBottomDialog(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return Text('info');
      },
    );
  }

  _showLoading(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: true,
      builder: (context) {
        return AlertDialog(
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              CircularProgressIndicator(),
              Padding(
                padding: const EdgeInsets.only(top: 26.0),
                child: Text("正在加载，请稍后..."),
              )
            ],
          ),
        );
      },
    );
  }

  _showAndroidDateDialog(BuildContext context) async {
    var date = DateTime.now();
    DateTime? dateF = await showDatePicker(
      context: context,
      initialDate: date,
      firstDate: date,
      lastDate: date.add(
        Duration(days: 30),
      ),
    );
    print(dateF.toString());
  }

  _showIosDateDialog(BuildContext context) async {
    var date = DateTime.now();
    var dateF = await showCupertinoModalPopup(
      context: context,
      builder: (context) {
        return SizedBox(
          height: 200,
          child: CupertinoDatePicker(
            mode: CupertinoDatePickerMode.dateAndTime,
            minimumDate: date,
            maximumDate: date.add(
              Duration(days: 30),
            ),
            maximumYear: date.year + 1,
            onDateTimeChanged: (DateTime value) {
              print(value);
            },
          ),
        );
      },
    );
  }
}
