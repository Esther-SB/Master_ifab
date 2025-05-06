import 'package:flutter/material.dart';
import 'package:master_ifab/config/config.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

@override
  Widget build(BuildContext context) { //el metodo build, devuelve un widget (objeto visual con su funcion)
    //buildcontext es toda la info del android
    return MaterialApp(
      debugShowCheckedModeBanner: false, //esto para quitar la etiquetado de construccion
      theme: AppTheme(electusColor: 1).getTheme(),
      home: Scaffold( //widget que ocupa toda la pantalla
      appBar: AppBar(
        title: Text('Home'),
        backgroundColor: const Color.fromARGB(255, 61, 160, 241)
      ),
        body: Center( //center es que todo lo que tenga dentro de body, va centrado automáticamente
          child:FilledButton(
            onPressed: () {}, 
            child: Text('Esbosan')
            )
        ),
      ),
    );
  }
}