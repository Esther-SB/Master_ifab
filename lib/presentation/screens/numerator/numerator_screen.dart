import 'package:flutter/material.dart';

class NumeratorScreen extends StatelessWidget {
  const NumeratorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Numerator Screen'),
      ),
      body: Center(
        child: Text(
          'Valor: 10',
          style: Theme.of(context).textTheme.titleLarge,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Aquí puedes agregar la lógica para incrementar el contador
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}