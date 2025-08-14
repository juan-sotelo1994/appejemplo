import 'package:flutter/material.dart';

class Configuracion extends StatelessWidget {
  const Configuracion({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Configuraciones"),
        backgroundColor: const Color.fromARGB(255, 0, 191, 109),
      ),
      body: const Center(
        child: Text(
          "Aquí puedes cambiar ajustes como tema, usuario y clave",
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}
