import 'package:disenios/screens/basic_design.dart';
import 'package:disenios/screens/home_screen.dart';
import 'package:disenios/screens/scroll_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    // Cambiar configuraciones del sistema como la barra de tareas y el color de los textos de la barra de tareas
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light.copyWith(
      statusBarColor: Colors.transparent,
    ));

    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      // home: ,
      initialRoute: 'home_screen',
      routes: {
        'basic_design'  : ( _ ) => const BasicDesignScreen(),
        'scroll_screen' : ( _ ) => const ScrollScreen(),
        'home_screen'   : ( _ ) => const HomeScreen() 
      },
    );
  }
}
