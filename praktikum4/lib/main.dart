import 'package:flutter/material.dart';
import 'package:praktikum4/main_screen.dart';
import 'package:praktikum4/provider/done_tourism_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => DoneTourismProvider(),
      child: MaterialApp(
        title: 'Praktikum 4',
        theme: ThemeData(),
        home: MainScreen(),
      ),
    );
  }
}


