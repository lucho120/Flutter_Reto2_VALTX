import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 60.0),
      child: const ListTile(
        leading: Icon(Icons.arrow_back_ios_new),
        title: Center(
          child: Text(
            'My Card',
            style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                color: Color.fromRGBO(53, 56, 53, 1)),
          ),
        ),
      ),
    );
  }
}
