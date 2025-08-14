import 'package:flutter/material.dart';

class Configuracion extends StatefulWidget {
  const Configuracion({super.key});

  @override
  State<Configuracion> createState() => _ConfiguracionState();
}

class _ConfiguracionState extends State<Configuracion> {
  bool _isDarkMode = false;
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Configuraciones"),
        backgroundColor: const Color.fromARGB(255, 0, 191, 109),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SwitchListTile(
              title: const Text("Modo oscuro"),
              value: _isDarkMode,
              onChanged: (value) {
                setState(() {
                  _isDarkMode = value;
                });
              },
            ),
            const SizedBox(height: 20),
            TextField(
              controller: _usernameController,
              decoration: const InputDecoration(
                labelText: "Nombre de usuario",
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20),
            TextField(
              controller: _passwordController,
              obscureText: true,
              decoration: const InputDecoration(
                labelText: "Clave",
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context, {
                  'isDarkMode': _isDarkMode,
                  'username': _usernameController.text,
                  'password': _passwordController.text,
                });
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 0, 191, 109),
              ),
              child: const Text("Guardar cambios"),
            ),
          ],
        ),
      ),
    );
  }
}
