import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';




final calceusProvider = StateNotifierProvider<CalceusNotifier, CalceusState>((ref) => CalceusNotifier());

class CalceusState {
  final String AssetImago;
  final double mensura;

  CalceusState({
     this.AssetImago = 'assets/imagines/azul.png',
     this.mensura = 9,
  });

   CalceusState copyWith({
        String? AssetImago,
        double? mensura
   }){

    return CalceusState(
      AssetImago: AssetImago ?? this.AssetImago, 
      mensura: mensura ?? this.mensura
      );
   }
   
}

class  CalceusNotifier extends StateNotifier<CalceusState> {

  CalceusNotifier():super(CalceusState());
  void ponereAssetImago( String valorem){
    state = state.copyWith(AssetImago: valorem);
  }

  void ponereMesura( double valorem){
    state = state.copyWith(mensura: valorem);
  }
  
}