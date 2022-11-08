import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled/providers/db_provider.dart';
import 'package:untitled/providers/example_provider.dart';
import 'package:untitled/ui/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ExampleProvider()),
        ChangeNotifierProvider(create: (_) => DBProvider()),
      ],
      child: MaterialApp(
        title: "QRApp",
        debugShowCheckedModeBanner: false,
      home: HomePage(),
      ),
    );
  }
}

