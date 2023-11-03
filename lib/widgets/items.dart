import 'package:flutter/material.dart';

import '../models/lists.dart';
class ItemWidget extends StatelessWidget{
  final Item item;

  const ItemWidget({  required this.item});
      // assert(item!=null),

      @override
      Widget build(BuildContext context){
        return Card(
          shadowColor: Colors.orange,
          child: ListTile(
            leading: Image.network(item.image),
            title: Text(item.name,
            textScaleFactor: 1.5,
            ),
            subtitle: Text(item.desc),

          ),
        );
      }
    }