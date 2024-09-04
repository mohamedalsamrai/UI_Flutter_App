import 'package:app2/signpag.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});
  @override
  State<StatefulWidget> createState() {
    return MMapp();
  }
}

class MMapp extends State<StatefulWidget> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: Signpag());
  }
}
