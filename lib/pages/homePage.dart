import 'package:flutter/material.dart';
import '../models/item.dart';

class HomePage extends StatelessWidget{
  final List<Items> items = [
    Items(name: 'Sugar', price: 5000),
    Items(name: 'Salt', price: 2000)
  ];
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text('Shoping List'),
      ),
      body: Container(
          margin: EdgeInsets.all(8),
          child: ListView.builder(
            padding: EdgeInsets.all(8),
            itemCount: items.length,
            itemBuilder: (context, index){
              final item = items[index];
              return InkWell(
                onTap: (){
                  Navigator.pushNamed(context, '/item', arguments: item);
                },
                child: Card(
                  child: Container(
                    margin:const EdgeInsets.all(8),
                    child: Row(children: [
                      Expanded(child: Text(item.name)),
                      Expanded(
                        child: Text(
                          item.price.toString(),
                          textAlign: TextAlign.end,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        )
    );
  }
}