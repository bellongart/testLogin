import 'package:flutter/material.dart';

//import 'package:myapp/pantallas/login_sc.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        centerTitle: true,
        title: const Text(
          'Home',
          style: TextStyle(fontSize: 30.0),
        ),
      ),
    );
  }
}