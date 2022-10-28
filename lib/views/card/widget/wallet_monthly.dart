import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class WalletMonthly extends StatelessWidget {
  const WalletMonthly({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.only(top: 20.0),
          child: Row(
            children: const [
              Text(
                'Monthly limits',
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 20.0,
                    color: Color.fromRGBO(53, 52, 52, 1)),
              ),
            ],
          ),
        ),
        Container(
          width: double.infinity,
          margin: const EdgeInsets.only(top: 20.0),
          child: Card(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0)),
            elevation: 10.0,
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    children: const [
                      Text(
                        'Ammount: ',
                        style: TextStyle(
                            color: Color.fromRGBO(107, 102, 102, 1),
                            fontSize: 17.0,
                            fontWeight: FontWeight.w400),
                      ),
                      Text(
                        '\$9.000',
                        style: TextStyle(
                            color: Color.fromRGBO(13, 122, 97, 1),
                            fontSize: 17.0,
                            fontWeight: FontWeight.w500),
                      )
                    ],
                  ),
                ),
                LinearPercentIndicator(
                  barRadius: const Radius.circular(20.0),
                  width: 330,
                  animation: true,
                  animationDuration: 1000,
                  lineHeight: 20.0,
                  percent: 0.6,
                  progressColor: const Color.fromRGBO(28, 143, 120, 1),
                  backgroundColor: const Color.fromARGB(255, 216, 215, 212),
                ),
                const Padding(
                  padding: EdgeInsets.only(right: 5.0, bottom: 5.0),
                  child: ListTile(
                    title: Text(
                      '\$0',
                      style: TextStyle(
                          color: Color.fromRGBO(107, 102, 102, 1),
                          fontSize: 17.0,
                          fontWeight: FontWeight.w400),
                    ),
                    trailing: Text(
                      '15.000\$',
                      style: TextStyle(
                          color: Color.fromRGBO(107, 102, 102, 1),
                          fontSize: 17.0,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
