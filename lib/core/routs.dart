// core/routs.dart
import 'package:flutter/material.dart';
import 'package:marketgo/src/app/features/splash/presentation/pages/splash_screen.dart';

final Map<String, WidgetBuilder> routs = {
  SplashScreen.routeName: (context) => SplashScreen()
};
