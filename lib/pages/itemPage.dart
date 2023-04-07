import 'package:flutter/material.dart';

import '../models/item.dart';

class ItemPage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    final itemArgs = ModalRoute.of(context)!.settings.arguments as Items;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Shoping List'),
      ),
      body: Center(
        child: Text('${itemArgs.name} with ${itemArgs.price}')
      )
    );
  }
}
