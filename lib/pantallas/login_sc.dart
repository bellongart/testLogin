import 'package:flutter/material.dart';

import 'package:prueba/pantallas/home.dart';

class LognSc extends StatefulWidget {
  const LognSc({super.key});

  @override
  State<LognSc> createState() => _LognScState();
}

class _LognScState extends State<LognSc> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool validar = false;
  @override
  Widget build(BuildContext context) {
    const styleLgn = TextStyle(fontSize: 20.0, color: Colors.white);
    const styLitt = TextStyle(fontSize: 12.0, color: Color.fromARGB(255, 158, 158, 158));
    const colPrim = Color(0xFF004F8F);
    const colSec = Color.fromARGB(255, 216, 130, 0);
    double tamAnch = MediaQuery.of(context).size.width*0.25;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: colSec,
        centerTitle: true,
        title: const Text('Registro CIX', style: TextStyle(fontSize: 30.0)),
        elevation: 15.0,
      ),
      backgroundColor: colPrim,
      body: Padding(
        padding: const EdgeInsets.all(32.0),
        child: Center(
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      const Text('Inicie sesión',
                        style: TextStyle(
                          fontSize: 25.0, color: Colors.white)),
                      const Text('Cédula de identidad', style: styleLgn),
                        SizedBox(width: tamAnch),
                        TextFormField(
                          keyboardType: TextInputType.number,
                          decoration: const InputDecoration(
                            hintText: 'Ingresar cédula de identidad',
                            hintStyle: TextStyle(color: Colors.grey),
                            border: OutlineInputBorder(),
                          ),
                          validator: (ci) {
                            if(ci == null || ci.isEmpty){
                              return 'Ingrese su cédula';
                            }
                            return null;
                          },
                        ),
                        const Text('Contraseña', style: styleLgn),
                          SizedBox(width: tamAnch),
                          TextFormField(
                            keyboardType: TextInputType.text,
                            decoration: const InputDecoration(
                              hintText: 'Ingresar contraseña',
                              hintStyle: TextStyle(color: Colors.grey),
                              border: OutlineInputBorder()),
                            validator: (pasw) {
                              if (pasw! == null || pasw.isEmpty) {
                                return 'Ingrese una contraseña válida';
                              }
                              return null;
                            },
                          ),
                    ],
                  ),
                ),
                const Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      TextButton(
                        onPressed: null,
                        child: Text('Olvidé contraseña', style: styLitt),
        
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _formKey.currentState!.validate();
        },
        // validar? null: () {
        //   Navigator.push(context, MaterialPageRoute(
        //     builder: (context) => const HomePage(),
        //     ),
        //   );
        // },         
        backgroundColor: colSec,
        foregroundColor: colPrim,
        child: const Icon(Icons.arrow_forward),
      ),
    );
  }
}