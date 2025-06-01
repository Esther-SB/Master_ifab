import 'package:flutter/material.dart';
import 'package:master_ifab/config/config.dart';
import 'package:master_ifab/presentation/screens/screens.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

@override
  Widget build(BuildContext context) {
    
    
     //el metodo build, devuelve un widget (objeto visual con su funcion)
    //buildcontext es toda la info del android
    return MaterialApp.router(
      routerConfig: appRouter ,
      debugShowCheckedModeBanner: false, //esto para quitar la etiquetado de construccion
      theme: AppTheme(electusColor: 1).getTheme(), 
    );
  }
}