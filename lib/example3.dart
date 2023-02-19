import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main(){
  runApp(MyApp());

}
class MyApp extends StatelessWidget {

  String data = "Razan test with Provider ";
// need to pass data from high top to bottom leaves
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<Data>(
        create:(context)=>Data(),

      child: MaterialApp(
        home: Scaffold(
          appBar: AppBar(title: MyText()),
          body: Level1(),
        ),
      ),
    );
  }
}

class MyText extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Text(Provider.of<Data>(context,listen: false).data);
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
      TextField(
        onChanged: (v){
          Provider.of<Data>(context,listen: false).changeData(v);
        },
      ),
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
        child: Text(Provider.of<Data>(context).data));
  }

}

class Data extends ChangeNotifier{
  String data= 'Test change notifier provider';


  void changeData(String newText){
    data=newText;
    notifyListeners();
  }

}




