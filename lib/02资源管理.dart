import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AssetPage extends StatefulWidget {
  @override
  AssetPageState createState() => new AssetPageState();
}

class AssetPageState extends State<AssetPage> {
  String text = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('资源管理'),
      ),
      body: Center(
        child: Column(
          children: [
            Text(text),
            Image(image: AssetImage('images/ic.png')),
            Image.asset('images/ic.png'),
          ],
        ),
      ),
    );
  }

  /*
   * 通过rootBundle加载资源
   */
  Future<void> loadAsset() async {
    Future<String> f = rootBundle.loadString('images/config.json');
    f.then((value) => text = value);
  }

  /*
   * 通过DefaultAssetBundle加载资源
   */
  void loadAsset2(BuildContext context) async {
    AssetBundle assetBundle = DefaultAssetBundle.of(context);
    Future<String> f = assetBundle.loadString('images/config.json');
    f.then((value) => text += '\n$value');
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadAsset();
    loadAsset2(context);
  }
}
