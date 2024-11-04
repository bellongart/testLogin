import 'package:flutter/material.dart';

import 'package:prueba/pantallas/login_sc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(debugShowCheckedModeBanner: false, home: LognSc());
  }
}