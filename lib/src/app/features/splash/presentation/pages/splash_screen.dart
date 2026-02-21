// src/app/features/splash/presentation/pages/splash_screen.dart
import 'package:flutter/material.dart';
import 'package:marketgo/core/utils/size_config.dart';
import 'package:marketgo/src/app/features/splash/presentation/pages/components/body.dart';

class SplashScreen extends StatelessWidget {
  static String routeName = '/spash';
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(body: Body());
  }
}
