import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../models/item.dart';

class HomePage extends StatelessWidget {
  final List<Item> items = [
    Item(
        name: 'Sugar',
        price: 5000,
        stock: 'Available',
        url:
            'https://images.unsplash.com/photo-1581268497089-7a975fb491a3?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8c3VnYXJ8ZW58MHwyfDB8fA%3D%3D&auto=format&fit=crop&w=400&q=60'),
    Item(
        name: 'Salt',
        price: 6000,
        stock: 'Available',
        url:
            'https://images.unsplash.com/photo-1580980906245-af3b357dcc84?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8c2FsdHxlbnwwfDJ8MHx8&auto=format&fit=crop&w=400&q=60'),
    Item(
        name: 'Carrot',
        price: 7000,
        stock: 'Not Available',
        url:
            'https://images.unsplash.com/photo-1606355601253-61a57fe375e7?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8Y2Fycm90fGVufDB8MnwwfHw%3D&auto=format&fit=crop&w=400&q=60'),
    Item(
        name: 'Salt',
        price: 9000,
        stock: 'Available',
        url:
            'https://images.unsplash.com/photo-1580980906245-af3b357dcc84?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8c2FsdHxlbnwwfDJ8MHx8&auto=format&fit=crop&w=400&q=60'),
  ];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          title: Text('Navigation'),
        ),
        body: Container(margin: EdgeInsets.all(8), child: listCard()));
  }

  listCard() {
    return ListView.builder(
        padding: EdgeInsets.all(8),
        itemCount: items.length,
        itemBuilder: (context, index) {
          final item = items[index];
          return InkWell(
              onTap: () {
                Navigator.pushNamed(context, '/item', arguments: item);
              },
              child: Card(
                  elevation: 4.0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(
                    children: [
                      ListTile(
                        title: Text(item.name),
                        subtitle: Text('\$' + item.price.toString()),
                      ),
                      Container(
                        height: 200.0,
                        child: Ink.image(
                          image: NetworkImage(item.url),
                          fit: BoxFit.cover,
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(16.0),
                        alignment: Alignment.centerLeft,
                        child: Text('Stock ' + item.stock),
                      ),
                    ],
                  )));
        });
  }
}
    // TODO: implement build
  //   return Scaffold(
  //       appBar: AppBar(
  //         title: Text('Navigation'),
  //       ),
  //       body: Container(
  //           margin: EdgeInsets.all(8),
  //           child: ListView.builder(
  //               padding: EdgeInsets.all(8),
  //               itemCount: items.length,
  //               itemBuilder: (context, index) {
  //                 final item = items[index];
  //                 return InkWell(
  //                   onTap: () {
  //                     Navigator.pushNamed(context, '/item', arguments: item);
  //                   },
  //                   child: Card(
  //                     child: Container(
  //                       margin: EdgeInsets.all(8),
  //                       child: Row(children: [
  //                         Expanded(child: Text(index.toString())),
  //                         Expanded(child: Text(item.name)),
  //                         Expanded(
  //                             child: Text(
  //                           item.price.toString(),
  //                           textAlign: TextAlign.center,
  //                         )),
  //                         Expanded(
  //                             child: Text(
  //                           item.stock.toString(),
  //                           textAlign: TextAlign.end,
  //                         ))
  //                       ]),
  //                     ),
  //                   ),
  //                 );
  //               })));
  //}
