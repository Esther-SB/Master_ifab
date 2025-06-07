import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:master_ifab/presentation/providers/numerator_provider.dart';



class NumeratorScreen extends ConsumerWidget {


 const NumeratorScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    final int clickNumerator = ref.watch(numeratorProviders);

    return Scaffold(
      appBar: AppBar(
        title: Text('Numerator Screen'),
      ),

      body: Center(
        child: Text('Valor: $clickNumerator',
        style: Theme.of(context).textTheme.titleLarge,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          //ref.read(numeratorProviders.notifier).state++;
          ref.read(numeratorProviders.notifier).update((state) => state + 1);
        },
        child: Icon(Icons.add),
        ),
    );
  }
}