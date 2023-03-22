import 'package:flutter/material.dart';
import 'package:praktikum4/done_tourism_list.dart';
import 'package:praktikum4/model/tourism_place.dart';
import 'package:praktikum4/tourism_list.dart';

class MainScreen extends StatefulWidget{
  MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen>{
  
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text('Wisata Surabaya'),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.done_outline),
            onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context){
                  return const DoneTourismList();
                }),);
            },
          )
        ],
      ),
      body: TourismList(),
    );
  }
}
