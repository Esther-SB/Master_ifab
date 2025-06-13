import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:master_ifab/presentation/widgets/calceus/button_aurantius.dart';
import 'package:master_ifab/presentation/widgets/calceus/calceus_descriptio.dart';
import 'package:master_ifab/presentation/widgets/calceus/calceus_preavidere.dart';

class CalceusDescScreen extends StatelessWidget {
  const CalceusDescScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              CalceusPraevidere(screenCompletaEst: true,),
              Positioned(
                top: 60,

                child: FloatingActionButton(
                  onPressed: (){
                    context.pop();
                  },
                  backgroundColor: Colors.transparent,
                  elevation: 0,
                  highlightElevation: 0,
                  child:const Icon(
                  Icons.chevron_left, 
                  color: Colors.white, 
                  size: 60, 
                   ) ,
                  )
                
                ),
            ],
          ),
          CalceusPraevidere(screenCompletaEst: true,),
          Expanded(child: SingleChildScrollView(
            child: Column(
              children: [
                const CalceusDescriptio(
                  titulus: 'Nike Air Max 720', 
                  descriptio:  """The Nike Air Max 720 goes bigger than ever before with Nike's taller Air unit 
                    yet. offering more air underfoot for unimaginable, all-day comfort. Has Air Max
                    gone too far? We hope so."""
                  ),
                  _PrettiumEtBuyNow()
              ],
            ),
          ))
        ],
      )
    );
    
  }
}

class _PrettiumEtBuyNow extends StatelessWidget {
  const _PrettiumEtBuyNow();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 30,
      ),
      child: Container(
        margin: const EdgeInsets.only(top: 20, bottom: 20),
        child: Row(
          children: [
            const Text('\$180.0', style: TextStyle(fontSize: 28),),
            const Spacer(),
            Bounce(
              delay: const Duration(seconds: 1),
              from: 10,
              child:
              const ButtonAurantius(
              textus: 'Buy now', 
              latitus: 120,
              altus: 40 ,
               ) ),
            
          ],
        ),
      ),
    );
  }
}