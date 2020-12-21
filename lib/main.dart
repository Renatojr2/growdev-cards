import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:growdevcards/routes/routes.dart';
import 'package:growdevcards/themes/themes.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      statusBarIconBrightness: Brightness.light,
    ),
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: growDevTheme(),
      routes: routes(),
    );
  }
}
