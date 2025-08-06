import 'package:flutter/material.dart';
import 'login.dart'; // Asegúrate de que esta ruta esté bien

class Nuevopass extends StatelessWidget {
  const Nuevopass({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController newPassController = TextEditingController();
    final TextEditingController confirmPassController = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: const Text("Restablecer Contraseña"),
        backgroundColor: const Color(0xFF00BF6D),
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: newPassController,
              obscureText: true,
              decoration: const InputDecoration(labelText: "Nueva contraseña"),
            ),
            const SizedBox(height: 16),
            TextField(
              controller: confirmPassController,
              obscureText: true,
              decoration: const InputDecoration(
                labelText: "Confirmar contraseña",
              ),
            ),
            const SizedBox(height: 32),
            ElevatedButton(
              onPressed: () {
                if (newPassController.text == confirmPassController.text &&
                    newPassController.text.isNotEmpty) {
                  // Mostrar mensaje
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text("Contraseña actualizada.")),
                  );

                  // Ir a la pantalla de login reemplazando esta pantalla
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => const Login()),
                  );
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text("Las contraseñas no coinciden."),
                    ),
                  );
                }
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF00BF6D),
                minimumSize: const Size(double.infinity, 48),
              ),
              child: const Text("Guardar"),
            ),
          ],
        ),
      ),
    );
  }
}
