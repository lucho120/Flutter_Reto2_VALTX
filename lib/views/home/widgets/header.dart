import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 55.0, left: 5.0, right: 5.0),
      height: 310.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30.0),
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
            margin: const EdgeInsets.only(top: 20.0, left: 20.0, right: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: const EdgeInsets.all(5.0),
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(68, 175, 169, 169),
                      borderRadius: BorderRadius.circular(40.0)),
                  child: const Icon(
                    Icons.menu_rounded,
                    size: 30.0,
                    color: Colors.white,
                  ),
                ),
                Row(
                  children: const [
                    Text(
                      'Welcome back, ',
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 20.0,
                          color: Colors.grey),
                    ),
                    Text(
                      'Arip!',
                      style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.w500,
                          color: Colors.white),
                    ),
                  ],
                ),
                Container(
                    padding: const EdgeInsets.all(5.0),
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(68, 175, 169, 169),
                        borderRadius: BorderRadius.circular(40.0)),
                    child: const Image(
                        width: 30.0,
                        image: NetworkImage(
                            'https://cdn-icons-png.flaticon.com/128/1182/1182718.png')) /* const Icon(
                                  Icons.notification_add,
                                  size: 30.0,
                                  color: Colors.white,
                                ), */
                    ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 30.0),
            child: Column(
              children: [
                const Text(
                  'Your Balance',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                      fontSize: 20.0),
                ),
                Container(
                    margin: const EdgeInsets.only(top: 20.0),
                    child: const Text(
                      '\$7.664,63',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 30.0),
                    )),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 20.0),
            child: Container(
              margin: const EdgeInsets.only(left: 30.0, right: 35.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  OptionsBalance(const Icon(Icons.send), 'Send'),
                  OptionsBalance(const Icon(Icons.wallet_rounded), 'Pay'),
                  OptionsBalance(const Icon(Icons.add_box), 'Top Up'),
                  OptionsBalance(const Icon(Icons.grid_view_rounded), 'More')
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget OptionsBalance(Icon icon, String textValor) {
    return Container(
      padding: const EdgeInsets.all(7.0),
      width: 65.0,
      height: 100.0,
      decoration: BoxDecoration(
          color: const Color.fromARGB(68, 84, 83, 83),
          borderRadius: BorderRadius.circular(30.0)),
      child: Column(
        children: [
          Container(
              padding: const EdgeInsets.all(10.0),
              margin: const EdgeInsets.only(bottom: 5.0),
              decoration: const BoxDecoration(
                  color: Color.fromARGB(68, 84, 83, 83),
                  shape: BoxShape.circle),
              child: Icon(
                icon.icon,
                color: Colors.white,
              )),
          Text(
            textValor,
            style: const TextStyle(
                fontWeight: FontWeight.w500,
                color: Colors.white,
                fontSize: 15.0),
          ),
        ],
      ),
    );
  }
}
