import 'package:flutter/material.dart';
import 'package:app_reto2_valtx/views/card/widget/wallet_monthly.dart';
import 'package:app_reto2_valtx/views/card/widget/wallet_cards.dart';

import '../../../utils/transactions/widgets/transactions.dart';

class Content extends StatelessWidget {
  const Content({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.only(left: 5.0, right: 5.0),
      child: Column(
        children: [
          const WalletCards(),
          const WalletMonthly(),
          Transactions(
            title: 'Transactions',
            listViewheight: 60.0,
          )
        ],
      ),
    );
  }
}
