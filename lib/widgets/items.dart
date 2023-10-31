import 'package:flutter/material.dart';

import '../models/lists.dart';
class ItemWidget extends StatelessWidget{
  final Item item;

  const ItemWidget({required Key key,  required this.item}):
      assert(item!=null),
      super(key:key);
      @override
      Widget build(BuildContext context){
        return ListTile(
          leading: Image.network(item.image),

        );
      }
    }