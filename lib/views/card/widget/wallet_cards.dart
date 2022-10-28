import 'package:flutter/material.dart';

class WalletCards extends StatelessWidget {
  const WalletCards({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 270,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            Container(
              width: 50,
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(10.0)),
              child: const Center(
                  child: Icon(
                Icons.add_box_outlined,
                color: Color.fromRGBO(15, 118, 60, 1),
              )),
            ),
            Container(
              width: 220,
              margin: const EdgeInsets.only(left: 20.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadiusDirectional.circular(15.0),
                border: Border.all(color: Colors.indigo),
                gradient: const LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.centerRight,
                  colors: [
                    Color.fromRGBO(26, 75, 72, 1),
                    Color.fromRGBO(54, 138, 133, 1),
                    Color.fromRGBO(161, 90, 71, 1),
                  ],
                ),
              ),
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.only(
                        left: 20.0, right: 20.0, top: 10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          'X-Card',
                          style: TextStyle(color: Colors.white, fontSize: 15.0),
                        ),
                        Image(
                            width: 50.0,
                            color: Colors.white,
                            image: NetworkImage(
                                'https://cdn-icons-png.flaticon.com/128/39/39134.png'))
                      ],
                    ),
                  ),
                  Container(
                      padding: const EdgeInsets.only(left: 5.0),
                      margin: const EdgeInsets.only(top: 10.0),
                      child: ListTile(
                        title: const Text(
                          'Balance',
                          style: TextStyle(
                              color: Color.fromRGBO(155, 154, 154, 1)),
                        ),
                        subtitle: Container(
                          margin: const EdgeInsets.only(top: 10.0),
                          child: const Text(
                            '\$4.664,63',
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 25.0,
                                color: Color.fromRGBO(245, 242, 241, 1)),
                          ),
                        ),
                      )),
                  Container(
                    margin: const EdgeInsets.only(top: 80.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Row(
                          children: const [
                            Icon(
                              Icons.star,
                              size: 10.0,
                              color: Color.fromRGBO(155, 154, 154, 1),
                            ),
                            Icon(
                              Icons.star,
                              size: 10.0,
                              color: Color.fromRGBO(155, 154, 154, 1),
                            ),
                            Icon(
                              Icons.star,
                              size: 10.0,
                              color: Color.fromRGBO(155, 154, 154, 1),
                            ),
                            Icon(
                              Icons.star,
                              size: 10.0,
                              color: Color.fromRGBO(155, 154, 154, 1),
                            ),
                            Text(
                              '  2468',
                              style: TextStyle(
                                  color: Color.fromRGBO(155, 154, 154, 1),
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                        const Text(
                          '12/24',
                          style: TextStyle(
                              color: Color.fromRGBO(235, 233, 233, 1),
                              fontSize: 15.0,
                              fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              width: 220,
              margin: const EdgeInsets.only(left: 20.0),
              decoration: BoxDecoration(
                color: const Color.fromRGBO(213, 214, 212, 1),
                borderRadius: BorderRadiusDirectional.circular(15.0),
              ),
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.only(
                        left: 20.0, right: 20.0, top: 10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          'M-Card',
                          style: TextStyle(
                              color: Color.fromRGBO(14, 14, 14, 1),
                              fontSize: 15.0),
                        ),
                        Image(
                            width: 50.0,
                            color: Colors.white,
                            image: NetworkImage(
                                'https://cdn-icons-png.flaticon.com/128/39/39134.png'))
                      ],
                    ),
                  ),
                  Container(
                      padding: const EdgeInsets.only(left: 5.0),
                      margin: const EdgeInsets.only(top: 10.0),
                      child: ListTile(
                        title: const Text(
                          'Balance',
                          style: TextStyle(
                              color: Color.fromRGBO(155, 154, 154, 1)),
                        ),
                        subtitle: Container(
                          margin: const EdgeInsets.only(top: 10.0),
                          child: const Text(
                            '\$2.664,63',
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 25.0,
                                color: Color.fromRGBO(14, 14, 14, 1)),
                          ),
                        ),
                      )),
                  Container(
                    margin: const EdgeInsets.only(top: 80.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Row(
                          children: const [
                            Icon(
                              Icons.star,
                              size: 10.0,
                              color: Color.fromRGBO(155, 154, 154, 1),
                            ),
                            Icon(
                              Icons.star,
                              size: 10.0,
                              color: Color.fromRGBO(155, 154, 154, 1),
                            ),
                            Icon(
                              Icons.star,
                              size: 10.0,
                              color: Color.fromRGBO(155, 154, 154, 1),
                            ),
                            Icon(
                              Icons.star,
                              size: 10.0,
                              color: Color.fromRGBO(155, 154, 154, 1),
                            ),
                            Text(
                              '  2468',
                              style: TextStyle(
                                  color: Color.fromRGBO(155, 154, 154, 1),
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                        const Text(
                          '12/24',
                          style: TextStyle(
                              color: Color.fromRGBO(235, 233, 233, 1),
                              fontSize: 15.0,
                              fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ));
  }
}
