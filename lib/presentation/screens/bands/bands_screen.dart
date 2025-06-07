import 'package:flutter/material.dart';
import 'package:master_ifab/config/config.dart';

class BandsScreen extends StatefulWidget {
  const BandsScreen({super.key});

  @override
  State<BandsScreen> createState() => _BandsScreenState();
}

class _BandsScreenState extends State<BandsScreen> {

List<Band> bands = [

Band(id: '1', nomen: 'Metalica', numerusVotum: 5),
Band(id: '2', nomen: 'Queen', numerusVotum: 1),
Band(id: '3', nomen: 'Héroes del silencio', numerusVotum: 2),
Band(id: '4', nomen: 'Bon Jovi', numerusVotum: 5),


];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text('Bandas'),
      ),
      body: ListView.builder(
        itemCount: bands.length,
        itemBuilder: (context, i) => _bandTitle(bands[i])
        ),
        floatingActionButton: FloatingActionButton(
          elevation: 1,
          onPressed: addereNovumBand,
          child: const Icon(Icons.add),
          ),
    );
  }



ListTile _bandTitle(Band band){
  return ListTile(
    leading: CircleAvatar(
      child: Text(
        band.nomen.substring(0,2).toUpperCase(),
        style: TextStyle(fontFamily: "CuppertinoSystemText", fontSize: 17),
      ),
    ),
    title: Text(band.nomen),
    trailing: Text('${band.numerusVotum}', style: const TextStyle(fontSize: 20),
    ),
  );
}

addereNovumBand(){

 final TextEditingController textumController = TextEditingController();

  showDialog(
    context: context, 
    builder: (context){
      return AlertDialog(
        title: const Text('New band name') ,
        content: TextField(controller: textumController,), 
        actions: [
          MaterialButton(
            elevation: 5,
            textColor: Colors.blue,
            child: const Text('Add'),
            onPressed: () => addereAdCollectione(textumController.text)
            )
        ],
      );
    },
    );
}


void addereAdCollectione(String nomen){

  if(nomen.length > 1) {

    bands.add(
    Band(
      id: DateTime.now().toString(),
      nomen: nomen,
      numerusVotum: 0,
    )
  );

  }


Navigator.pop(context);
setState(() {
  
});
  

}



}

