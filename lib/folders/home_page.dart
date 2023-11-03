import 'dart:ffi';

import 'package:app2/widgets/drawer.dart';
import 'package:flutter/material.dart';
import 'package:app2/models/lists.dart';

import 'package:app2/widgets/items.dart';
class HomePage extends StatelessWidget{
  final int days=1;
  final String name="India";
  @override
  Widget build(BuildContext context){

    final dummylist=List.generate(10, (index) => list.products[0]);



    return Scaffold(
      appBar: AppBar(
        title: Text("Elderly Companionship App"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(itemCount: dummylist.length,
        itemBuilder: (context,index){

          return  ItemWidget(
          item:dummylist[index], );
        }),
      ),
      drawer: Mydrawer(),

    );

  }


}