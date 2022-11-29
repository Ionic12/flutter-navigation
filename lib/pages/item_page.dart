import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:navigation/models/item.dart';
import 'package:navigation/pages/home_page.dart';

class ItemPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Item itemArgs = ModalRoute.of(context)!.settings.arguments as Item;

    return Scaffold(
      appBar: AppBar(
        title: Text(itemArgs.name),
      ),
      body: Center(
        child: Show(
          name: itemArgs.name,
          price: itemArgs.price,
          stock: itemArgs.stock,
          url: itemArgs.url,
        ),
      ),
    );
  }
}

class Show extends StatelessWidget {
  const Show({
    Key? key,
    required this.name,
    required this.price,
    required this.stock,
    required this.url,
  }) : super(key: key);

  final String name;
  final int price;
  final String stock;
  final String url;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Container(
          margin: const EdgeInsets.fromLTRB(10, 0, 10, 20),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                    alignment: Alignment.center,
                    margin: const EdgeInsets.only(top: 10),
                    child: Text(
                      "Item",
                      style: TextStyle(fontSize: 20),
                    )),
                Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(top: 10),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image.network(
                      '$url',
                      height: 300,
                      width: 300,
                    ),
                  ),
                ),
                Container(
                    alignment: Alignment.center,
                    margin: EdgeInsets.only(top: 10),
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Container(
                        width: 305,
                        height: 70,
                        child: Row(children: [
                          Expanded(
                              child: Text(
                            'name\n\n$name',
                            textAlign: TextAlign.center,
                          )),
                          Expanded(
                              child: Text(
                            'price\n\n$price',
                            textAlign: TextAlign.center,
                          )),
                          Expanded(
                              child: Text(
                            'stock\n\n$stock',
                            textAlign: TextAlign.center,
                          )),
                        ]),
                      ),
                    ))
              ])),
    ])));
  }
}
