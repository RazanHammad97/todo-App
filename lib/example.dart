import 'package:flutter/material.dart';
import 'package:todoapp/main.dart';

void main(){
  runApp(MyApp());

}
 class MyApp extends StatelessWidget {

  String data = "Razan test without state managment";
// need to pass data from high top to bottom leaves
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text(data)),
        body: Level1(data: data),
      ),
    );
  }
}

class Level1 extends StatelessWidget{
  String data ='';
  Level1({required this.data});
  @override
  Widget build(BuildContext context) {
    return Level2(data: data,);
  }
}

class Level2 extends StatelessWidget{
  String data ='';
  Level2({required this.data});
  @override
  Widget build(BuildContext context) {
  return Column(children: [
    Container(),
    Level3(data: data,)
  ],);
  }
}

class Level3 extends StatelessWidget{
  String data ='';
  Level3({required this.data});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
  return Directionality(
      textDirection: TextDirection.rtl,
      child: Text(data));
  }

}




