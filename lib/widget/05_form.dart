import 'package:flutter/material.dart';

class FormPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _FormStatus();
}

class _FormStatus extends State<FormPage> {
  TextEditingController _unameController = new TextEditingController();
  TextEditingController _pwdController = new TextEditingController();
  GlobalKey _globalKey = new GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FormPage'),
      ),
      body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 20.0),
          child: Form(
            key: _globalKey, //设置globalKey，用于后面获取FormState
            autovalidate: true, //开启自动校验
            child: Column(
              children: <Widget>[
                TextFormField(
                  controller: _unameController,
                  decoration: InputDecoration(
                      labelText: 'user name',
                      hintText: 'put user name',
                      icon: Icon(Icons.person)),
                  validator: (value) {
                    return value!.trim().length > 0
                        ? null
                        : 'user name is not null';
                  },
                ),
                TextFormField(
                    controller: _pwdController,
                    decoration: InputDecoration(
                        labelText: 'pwd',
                        hintText: 'input pwd',
                        icon: Icon(Icons.lock)),
                    obscureText: true,
                    //校验密码
                    validator: (v) {
                      return v!.trim().length > 5 ? null : "密码不能少于6位";
                    }),
                // 登录按钮
                Padding(
                  padding: const EdgeInsets.only(top: 28),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                          child: RaisedButton(
                              padding: EdgeInsets.all(10),
                              child: Text('login'),
                              color: Theme.of(context).primaryColor,
                              textColor: Colors.white,
                              onPressed: () {
                                if ((_globalKey.currentState as FormState)
                                    .validate()) {
                                  //验证通过提交数据
                                }
//                            if (Form.of(context).validate()) {
//                              验证通过提交数据
//                            }
                              }))
                    ],
                  ),
                )
              ],
            ),
          )),
    );
  }
}
