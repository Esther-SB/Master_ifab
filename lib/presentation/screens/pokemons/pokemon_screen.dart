import 'package:flutter/material.dart';

class PokemonScreen extends StatelessWidget {

  final String pokemonId;

  const PokemonScreen({

    required this.pokemonId,
    super.key
    });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Nombre del Pokémon'),
      ),
      body: Center(
        child: Text('Datos del Pokémon $pokemonId',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}