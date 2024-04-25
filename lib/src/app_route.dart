import 'package:flutter/cupertino.dart';
import 'package:flutter_demo_bloc/src/pages/another/another_page.dart';
import 'package:flutter_demo_bloc/src/pages/home/home_page.dart';

class AppRoute {
  static const String home = 'home';
  static const String another = 'another';

  final _route = <String, WidgetBuilder>{
    home: (context) => const MyHomePage(title: 'Home Page BLOC'),
    another: (context) => const AnotherPage(title: 'Another Page BLOC'),
  };

  get getAll => _route;
}