import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:master_ifab/presentation/providers/calceus_provider.dart';
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

              const Hero(

                tag: 'zapato-1',
                child: CalceusPraevidere(screenCompletaEst: true,)),
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
                  _PrettiumEtBuyNow(pretium: 180.0),
                  _ColoresEtAlterButton(),
                  _ButtonsLikeCartSettings(),
              ],
            ),
          ))
        ],
      )
    );
    
  }
}

class _PrettiumEtBuyNow extends StatelessWidget {
   final double pretium; 
const _PrettiumEtBuyNow({required this.pretium});
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

class _ColoresEtAlterButton extends StatelessWidget {



  const _ColoresEtAlterButton();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Row(
        children: [
        Expanded(child: Stack(
          children: [
           Positioned(
            left: 90,
            child:         
            _ActioButtonCOlor(
              color: Color.fromARGB(255, 198, 214, 66), 
              index: 4,
              urlImago: 'assets/imagines/verde.png',),

              ),

               Positioned(
            left: 60,
            child:         
            _ActioButtonCOlor(
              color: Color.fromARGB(255, 255, 173, 41), 
              index: 3,
              urlImago: 'assets/imagines/amarillo.png',),

              ),


                  Positioned(
            left: 30,
            child:         
            _ActioButtonCOlor(
              color: Color.fromARGB(255, 32, 153, 241), 
              index: 2,
              urlImago: 'assets/imagines/azul.png',),

              ),



          
            _ActioButtonCOlor(
              color: Color.fromARGB(255, 54, 77, 86), 
              index: 1,
              urlImago: 'assets/imagines/negro.png',),

               
          ],
        )),


        const ButtonAurantius(
          textus: 'More related items',
          altus: 30,
          latitus: 170,
          color: Color.fromARGB(255, 255, 198, 17),
          )
      ],
      ),
    );
  }
}

class _ActioButtonCOlor extends ConsumerWidget {
  final Color color;
  final int index;
  final String urlImago;

  const _ActioButtonCOlor({
    required this.color,
    required this.index,
    required this.urlImago,

  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {



    return FadeInLeft(
      delay: Duration(milliseconds: index * 100),
      duration: const Duration(microseconds: 300),      
      child: GestureDetector(
        onTap: () {
          ref.read(calceusProvider.notifier).ponereAssetImago(urlImago);
        },
        child: Container(
          width: 45,
          height: 45,
          decoration: BoxDecoration(color: color, shape: BoxShape.circle),
        ),
      ),
    );
  }
}

class _ButtonsLikeCartSettings extends StatelessWidget {
  const _ButtonsLikeCartSettings();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 30),
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _ButtonCumUmbra(icon: Icon(Icons.stars, color: Colors.red , size: 25,) ),
          _ButtonCumUmbra(icon: Icon(Icons.add_shopping_cart, color: Colors.grey.withValues(alpha: 0.4) , size: 25,) ),
          _ButtonCumUmbra(icon: Icon(Icons.settings, color: Colors.grey.withValues(alpha: 0.4) , size: 25,) ),


        ],
      ),
    );
  }
}

class _ButtonCumUmbra extends StatelessWidget {

final Icon icon;

  const _ButtonCumUmbra({
    required this.icon
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 55,
      height: 55,
      decoration: BoxDecoration(
        color: Colors.white,
        shape: BoxShape.circle,
        boxShadow: const [
          BoxShadow(
            color: Colors.black12, 
            spreadRadius: -5, 
            blurRadius: 20, 
            offset: Offset(0, 10)
            )
        ]
      ),
      child: icon,
    );
  }
}