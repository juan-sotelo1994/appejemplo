import 'package:appejemplo/widgets/menuprincipal/menuprincipal.dart';
import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';

class Animacion extends StatelessWidget {
  const Animacion({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      home: AnimatedSplashScreen(
        splash: 'assets/animacion/lego.gif',
        splashIconSize: 2000.0,
        centered: true,
        nextScreen: const Menuprincipal(),
        backgroundColor: Colors.white,
        duration: 8000,
      ),
    );
  }
}
