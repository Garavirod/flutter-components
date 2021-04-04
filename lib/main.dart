import 'package:components/src/views/alerts_view.dart';
import 'package:components/src/views/avatar_view.dart';
import 'package:components/src/views/home_view.dart';
import 'package:flutter/material.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      //Routing map
      initialRoute: '',
      routes: <String, WidgetBuilder>{
        '': (BuildContext context) => HomeView(),
        'alert': (BuildContext context) => AlertView(),
        'avatar': (BuildContext context) => AvatarView(),
      },
    );
  }  
}