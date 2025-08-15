import 'package:flutter/material.dart';
import 'package:circular_menu/circular_menu.dart';
import 'package:appejemplo/widgets/configuracion/configuracion.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Menuprincipal(),
    );
  }
}

class Menuprincipal extends StatefulWidget {
  const Menuprincipal({super.key});

  @override
  State<Menuprincipal> createState() => _MenuprincipalState();
}

class _MenuprincipalState extends State<Menuprincipal> {
  // Clave para controlar el menú circular
  final GlobalKey<CircularMenuState> _menuKey = GlobalKey<CircularMenuState>();

  Color _color = const Color.fromARGB(255, 255, 255, 255);
  String _colorName = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 0, 191, 109),
        centerTitle: true,
        title: const Text('Menu'),
      ),
      body: Padding(
        padding: const EdgeInsets.only(bottom: 350),
        child: CircularMenu(
          key: _menuKey, // importante: asignar la clave
          alignment: Alignment.bottomCenter,
          backgroundWidget: Center(
            child: RichText(
              text: TextSpan(
                style: const TextStyle(color: Colors.black, fontSize: 28),
                children: <TextSpan>[
                  TextSpan(
                    text: _colorName,
                    style: TextStyle(
                      color: _color,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const TextSpan(text: ' button is clicked.'),
                ],
              ),
            ),
          ),
          toggleButtonColor: const Color.fromARGB(255, 0, 191, 109),
          items: [
            CircularMenuItem(
              icon: Icons.home,
              color: Colors.green,
              onTap: () {
                setState(() {
                  _color = Colors.green;
                  _colorName = 'Green';
                });
                // Si quieres, puedes cerrar el menú tras elegir
                // _menuKey.currentState?.reverseAnimation();
              },
            ),
            CircularMenuItem(
              icon: Icons.search,
              color: Colors.blue,
              onTap: () {
                setState(() {
                  _color = Colors.blue;
                  _colorName = 'Blue';
                });
              },
            ),
            CircularMenuItem(
              icon: Icons.settings,
              color: Colors.orange,
              onTap: () async {
                // Navegar y esperar a que se cierre la pantalla
                await Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => const Configuracion()),
                );
                // Al volver, cerramos el menú (si estaba abierto, se cierra; si no, no pasa nada)
                _menuKey.currentState?.reverseAnimation();
              },
            ),
            CircularMenuItem(
              icon: Icons.chat,
              color: Colors.purple,
              onTap: () {
                setState(() {
                  _color = Colors.purple;
                  _colorName = 'Purple';
                });
              },
            ),
            CircularMenuItem(
              icon: Icons.notifications,
              color: Colors.brown,
              onTap: () {
                setState(() {
                  _color = Colors.brown;
                  _colorName = 'Brown';
                });
              },
            ),
            CircularMenuItem(
              icon: Icons.notifications,
              color: Colors.brown,
              onTap: () {
                setState(() {
                  _color = Colors.brown;
                  _colorName = 'Brown';
                });
              },
            ),
            CircularMenuItem(
              icon: Icons.logout,
              color: const Color.fromARGB(255, 251, 69, 3),
              onTap: () {
                Navigator.pushReplacementNamed(context, '/login');
              },
            ),

            CircularMenuItem(
              icon: Icons.notifications,
              color: Colors.brown,
              onTap: () {
                setState(() {
                  _color = Colors.brown;
                  _colorName = 'Brown';
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
