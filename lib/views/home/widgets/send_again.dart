import 'package:flutter/material.dart';

class SendAgain extends StatelessWidget {
  const SendAgain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const ListTile(
          title: Text(
            'Send again',
            style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w500),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              padding: const EdgeInsets.all(10.0),
              decoration: const BoxDecoration(
                  shape: BoxShape.circle, color: Colors.white),
              child: const Icon(
                Icons.search,
                size: 40.0,
              ),
            ),
            Container(
              padding: const EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20.0)),
              child: Row(
                children: [
                  const CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://img.freepik.com/free-photo/beautiful-brunette-serious-girl-portrait_23-2148176372.jpg?w=360&t=st=1666754165~exp=1666754765~hmac=a4102ec06fc91e8acc48bbf8333356883a8fdd7938b9eb96d9076067397dbdb7'),
                  ),
                  Container(
                      margin: const EdgeInsets.only(left: 10.0),
                      child: Column(
                        children: [
                          const Text(
                            'Tiana Saris',
                            style: TextStyle(
                                fontSize: 15.0, fontWeight: FontWeight.w500),
                          ),
                          Container(
                              margin: const EdgeInsets.only(top: 5.0),
                              child: const Text(
                                '\$233,00',
                                style: TextStyle(
                                    color: Colors.grey, fontSize: 15.0),
                              ))
                        ],
                      ))
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20.0)),
              child: Row(
                children: [
                  const CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://img.freepik.com/free-photo/medium-shot-happy-man-smiling_23-2148221808.jpg?w=996&t=st=1666756838~exp=1666757438~hmac=d030e654a090c0db7355da759fcf84a777ea86b24921af2d09a26c6ddcffa937'),
                  ),
                  Container(
                      margin: const EdgeInsets.only(left: 10.0),
                      child: Column(
                        children: [
                          const Text(
                            'Schleifer',
                            style: TextStyle(
                                fontSize: 15.0, fontWeight: FontWeight.w500),
                          ),
                          Container(
                              margin: const EdgeInsets.only(top: 5.0),
                              child: const Text(
                                '\$33,00',
                                style: TextStyle(
                                    color: Colors.grey, fontSize: 15.0),
                              ))
                        ],
                      ))
                ],
              ),
            )
          ],
        )
      ],
    );
  }
}
