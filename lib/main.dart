import 'package:flutter/material.dart';
import 'package:flutter_demo/01%E8%B7%AF%E7%94%B1%E7%AE%A1%E7%90%86.dart';
import 'package:flutter_demo/route_manager.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final routes = {'/b': (context, {arguments}) => RoutePage(arguments)};

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // 本地化的代理类
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: [
        const Locale('en', 'US'),
        const Locale('zh', 'CN'),
      ],
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
      routes: getRoutes(),

      ///注意，配置这个就不能够同时定义上面：routes，同时定义以上面的为准
      onGenerateRoute: (RouteSettings settings) {
        String? name = settings.name;
        Function function = routes[name]!;
        if (function != null) {
          Route route = MaterialPageRoute(
            builder: (context) =>
                function(context, arguments: settings.arguments),
          );
          return route;
        }
        return null;
      },
    );
  }
}

// ignore: must_be_immutable
class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Wrap(
        spacing: 5,
        children: children(context),
      ),
    );
  }
}

class MyText extends StatelessWidget {
  final String title;
  final VoidCallback back;

  MyText(this.title, this.back);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: back,
      child: Text(title),
    );
  }
}
