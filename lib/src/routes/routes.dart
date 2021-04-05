import 'package:components/src/views/alerts_view.dart';
import 'package:components/src/views/avatar_view.dart';
import 'package:components/src/views/home_view.dart';
import 'package:flutter/material.dart';

Map <String, WidgetBuilder> getApplicationRoutes(){
  return  <String, WidgetBuilder> {
    '': (BuildContext context) => HomeView(),
    'alert': (BuildContext context) => AlertView(),
    'avatar': (BuildContext context) => AvatarView(),
  };
}
