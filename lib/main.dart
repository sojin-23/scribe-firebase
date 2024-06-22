// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:scribe/utils/constants.dart';
import 'package:scribe/view/pages/splash_page.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
          textTheme: ThemeData.dark().textTheme.apply(fontFamily: "Open Sans"),
          scaffoldBackgroundColor: Pallete.backgroundColor,
          appBarTheme: AppBarTheme(backgroundColor: Pallete.tertiaryColors),
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
          hoverColor: Colors.transparent,
          splashFactory: NoSplash.splashFactory),
      home: SplashPage(),
    );
  }
}
