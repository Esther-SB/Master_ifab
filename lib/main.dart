import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:master_ifab/config/config.dart';
import 'package:master_ifab/presentation/providers/provaiders.dart';


void main() {
  runApp(
    const ProviderScope(
      child: MainApp(),

    )
    );
}

class MainApp extends ConsumerWidget {
  const MainApp({super.key});

@override
  Widget build(BuildContext context, WidgetRef ref) {
    
      final bool estTenebrisModus = ref.watch(estTenebrisModusProvider);

    
     //el metodo build, devuelve un widget (objeto visual con su funcion)
    //buildcontext es toda la info del android
    return MaterialApp.router(
      routerConfig: appRouter ,
      debugShowCheckedModeBanner: false, //esto para quitar la etiquetado de construccion
      theme: AppTheme(electusColor: 1, tenebrisModusEst: estTenebrisModus).getTheme(), 
    );
  }
}