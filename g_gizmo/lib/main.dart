import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:g_gizmo/Theme/ThemeScaffold.dart';

import 'Account Sign up and SIgn In/Login Account.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      // themeMode: themmeNotifier.isDarkMode ? ThemeMode.dark : ThemeMode.light,
      debugShowCheckedModeBanner: false,
      home: Themescaffold(),
      // home: AccountLogin(),
    );
  }
}
