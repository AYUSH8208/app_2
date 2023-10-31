import 'dart:ffi';

import 'package:app2/widgets/drawer.dart';
import 'package:flutter/material.dart';


import 'package:app2/widgets/items.dart';
class HomePage extends StatelessWidget{
  final int days=1;
  final String name="India";
  @override
  Widget build(BuildContext context){
    var list;
    return Scaffold(
      appBar: AppBar(
        title: Text("Elderly Companionship App"),
      ),
      // body: Padding(
      //   padding: const EdgeInsets.all(8.0),
      //   child: ListView.builder(itemCount: list.items.length,
      //   itemBuilder: (context,index){
      //     return  ItemWidget(
      //     item:list.items[index], key:GlobalKey() ,);
      //   }),
      // ),
      drawer: Mydrawer(),

    );

  }


}