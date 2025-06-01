import 'package:flutter/material.dart';

class NumeratorScreen extends StatefulWidget {
  const NumeratorScreen({super.key});

  @override
  State<NumeratorScreen> createState() => _NumeratorScreenState();
}

class _NumeratorScreenState extends State<NumeratorScreen> {

int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Numerator Screen'),
      ),
      body: Center(
        child: Text(
          'Valor: $counter',
          style: Theme.of(context).textTheme.titleLarge,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            counter ++;
          });
          // Aquí puedes agregar la lógica para incrementar el contador
        },
        child: Icon(Icons.add),
      ),

    );
  }
}