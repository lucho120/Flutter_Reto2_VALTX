import 'package:flutter/material.dart';
import 'package:app_reto2_valtx/utils/transactions/widgets/transactions.dart';
import 'package:app_reto2_valtx/views/home/widgets/send_again.dart';

class Content extends StatelessWidget {
  const Content({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.only(left: 5.0, right: 5.0),
      child: Column(
        children: [
          const SendAgain(),
          Transactions(
            title: 'Recent transactions',
            listViewheight: 162.0,
          )
        ],
      ),
    );
  }
}
