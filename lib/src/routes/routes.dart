import 'package:components/src/views/alerts_view.dart';
import 'package:components/src/views/animated_view.dart';
import 'package:components/src/views/avatar_view.dart';
import 'package:components/src/views/cards_view.dart';
import 'package:components/src/views/home_view.dart';
import 'package:components/src/views/inputs_view.dart';
import 'package:components/src/views/slider_view.dart';
import 'package:flutter/material.dart';

Map <String, WidgetBuilder> getApplicationRoutes(){
  return  <String, WidgetBuilder> {
    '': (BuildContext context) => HomeView(),
    'alert': (BuildContext context) => AlertView(),
    'avatar': (BuildContext context) => AvatarView(),
    'card': (BuildContext context) => CardView(),
    'animation': (BuildContext context) => AnimatedView(),
    'inputs': (BuildContext context) => InputView(),
    'slider': (BuildContext context) => SliderView(),
  };
}

