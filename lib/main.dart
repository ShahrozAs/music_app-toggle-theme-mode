import 'package:flutter/material.dart';
import 'package:music/pages/home_page.dart';

import 'package:music/themes/theme_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(create: (context) => ThemeProvider(),
  child: const MyApp(),));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Music',
      theme:Provider.of<ThemeProvider>(context).themeData,
      home: const HomePage(),
    );
  }
}

