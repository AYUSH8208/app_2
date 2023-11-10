import 'dart:ffi';

import 'package:app2/widgets/drawer.dart';
import 'package:flutter/material.dart';
import 'package:app2/models/lists.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:app2/widgets/items.dart';
class HomePage extends StatelessWidget{

  @override
  Widget build(BuildContext context){





    return Scaffold(
      body:SafeArea(
        child: Container(
          padding: Vx.m32,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CatalogHeader(),
              if(list.products!=null && list.products.isNotEmpty)
                Itemlist()
              else
                Center(child: CircularProgressIndicator()),




            ],
          ),
        ),
      ),
      drawer: Mydrawer(),

    );

  }


}

class CatalogHeader extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Column(
      children: [

        "Catalog App".text.xl5.bold.color(Colors.indigo).make(),
        "recent products".text.xl2.color(Colors.indigoAccent).make(),
      ],


    );
  }
}


class Itemlist extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: list.products.length,
      itemBuilder: (context, index) {
        final catalog = list.products[index];
        return CatalogItem(catalog: catalog);
      },


    );
  }
}


class CatalogItem extends StatelessWidget {
@override
final Item catalog;

  const CatalogItem({super.key, required this.catalog});
Widget build(BuildContext context) {
  return VxBox(
    child: Row(
      children: [
        Image.network(catalog.image)
      ],
    ),

  ).white.square(120).make();
}
}