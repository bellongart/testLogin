import 'package:flutter/material.dart';

class Vars extends StatelessWidget {
  const Vars({super.key});

  @override
  Widget build(BuildContext context) {
    const styleLgn = TextStyle(fontSize: 20.0, color: Colors.white);
    const styLitt =
        TextStyle(fontSize: 12.0, color: Color.fromARGB(255, 158, 158, 158));
    const colPrim = Color(0xFF004F8F);
    const colSec = Color.fromARGB(255, 216, 130, 0);
    double tamAnch = MediaQuery.of(context).size.width;
    return const MaterialApp();
  }
}
