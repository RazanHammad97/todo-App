import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoapp/main.dart';

void main(){
  runApp(MyApp());

}
class MyApp extends StatelessWidget {

  String data = "Razan test with Provider ";
// need to pass data from high top to bottom leaves
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Provider<String>(
      create: (context)=>data,
      child: MaterialApp(
        home: Scaffold(
          appBar: AppBar(title: Text(data)),
          body: Level1(),
        ),
      ),
    );
  }
}

class Level1 extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Level2();
  }
}

class Level2 extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(),
      Level3()
    ],);
  }
}

class Level3 extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Directionality(
        textDirection: TextDirection.rtl,
        child: Text(Provider.of<String>(context)));
  }

}




