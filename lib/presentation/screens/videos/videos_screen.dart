import 'package:flutter/material.dart';
import 'package:master_ifab/config/config.dart';

class VideosScreen extends StatefulWidget {
  const VideosScreen({super.key});

  @override
  State<VideosScreen> createState() => _VideosScreenState();
}

class _VideosScreenState extends State<VideosScreen> {

  bool satusPortantes = true;

List<VideoPost> videos = [];

Future <void > portamProximanPaginam()async{

 await Future.delayed(const Duration(seconds: 2));
 videos.addAll(videoPosts);

satusPortantes = false;
  setState(() {});

}

@override
  void initState() {
    portamProximanPaginam();
    
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Videos Screen'),
      ),
      body: satusPortantes ? const Center(
        child: CircularProgressIndicator(strokeWidth: 2,),) 
        : const Placeholder()
      );
    
  }
}