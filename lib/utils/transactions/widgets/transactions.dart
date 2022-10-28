import 'dart:ffi';

import 'package:flutter/material.dart';

class Transactions extends StatelessWidget {
  // title -> representa el titulo de la seccion transactions, se usará en 2 vistas
  // las cuales contemplan recent transactions(home) y transactions(card)
  String title;

  // tamaño de la listview que contendrá las transacciones del usuario
  double listViewheight;

  Transactions({Key? key, required this.title, required this.listViewheight})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          title: Text(
            title,
            style: const TextStyle(fontSize: 20.0, fontWeight: FontWeight.w500),
          ),
          trailing: const Text(
            'See all',
            style: TextStyle(
                color: Color.fromARGB(197, 201, 41, 26),
                fontSize: 15.0,
                fontWeight: FontWeight.w700),
          ),
        ),
        SizedBox(
          width: double.infinity,
          height: listViewheight,
          child: ListView(
            padding: const EdgeInsets.all(0.0),
            scrollDirection: Axis.vertical,
            children: [
              CardTransactions(
                  'https://cdn-icons-png.flaticon.com/128/5968/5968705.png',
                  'Figma',
                  'February 1, 2022',
                  '\$433,00'),
              CardTransactions(
                  'https://cdn-icons-png.flaticon.com/128/732/732228.png',
                  'Netflix',
                  'February 1, 2022',
                  '\$4,00'),
              CardTransactions(
                  'https://cdn-icons-png.flaticon.com/128/5968/5968269.png',
                  'Amazon prime',
                  'February 1, 2022',
                  '\$40,00'),
            ],
          ),
        )
      ],
    );
  }

  Widget CardTransactions(
      String urlImage, String textProduct, String textDate, String textPrice) {
    return Column(
      children: [
        Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          elevation: 10.0,
          child: Container(
            padding: const EdgeInsets.all(10.0),
            width: double.infinity,
            height: 80,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 247, 245, 245),
                      borderRadius: BorderRadius.circular(10.0)),
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Image(
                        width: 40.0,
                        height: 40.0,
                        image: NetworkImage(urlImage)),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 8.0, right: 70.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        textProduct,
                        style: const TextStyle(
                            fontSize: 20.0, fontWeight: FontWeight.w500),
                      ),
                      Container(
                          margin: const EdgeInsets.only(top: 5.0),
                          child: Text(
                            textDate,
                            style: const TextStyle(
                                color: Colors.grey, fontSize: 15.0),
                          ))
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(right: 10.0, top: 8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        textPrice,
                        style: const TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.w500,
                          color: Color.fromRGBO(70, 131, 126, 1.0),
                        ),
                      ),
                      Container(
                          margin: const EdgeInsets.only(top: 5.0),
                          child: const Text(
                            'Subscription',
                            style:
                                TextStyle(color: Colors.grey, fontSize: 15.0),
                          ))
                    ],
                  ),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
