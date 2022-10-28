import 'package:app_reto2_valtx/views/card/card_view.dart';
import 'package:app_reto2_valtx/views/home/home_view.dart';
import 'package:flutter/material.dart';

class AppNavigationBar extends StatefulWidget {
  const AppNavigationBar({super.key});

  @override
  State<AppNavigationBar> createState() => _AppNavigationBarState();
}

class _AppNavigationBarState extends State<AppNavigationBar> {
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    HomeView(),
    Text('Search Page',
        style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
    Text('Create Page',
        style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
    CardView(),
    Text('Profile Page',
        style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: _widgetOptions.elementAt(_selectedIndex),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: _selectedIndex,
          showSelectedLabels: true,
          showUnselectedLabels: false,
          selectedLabelStyle:
              const TextStyle(fontWeight: FontWeight.bold, fontSize: 30.0),
          selectedItemColor: const Color.fromRGBO(70, 131, 126, 1.0),
          iconSize: 30.0,
          onTap: _onItemTapped,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: _selectedIndex == 0
                    ? const Icon(Icons.other_houses_rounded)
                    : const Icon(Icons.other_houses_outlined),
                label: '.'),
            const BottomNavigationBarItem(
                icon: Icon(Icons.insert_chart_outlined), label: '.'),
            BottomNavigationBarItem(
              icon: Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(5.0),
                  height: 60.0,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color.fromRGBO(231, 233, 236, 1.0)),
                  child: Container(
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        gradient: LinearGradient(
                          colors: [
                            Color.fromRGBO(70, 131, 126, 1.0),
                            Color.fromRGBO(159, 99, 84, 1.0),
                          ],
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            offset: Offset(4.0, 4.0), //(x,y)
                            blurRadius: 8.0,
                          )
                        ]),
                    padding: const EdgeInsets.all(0.0),
                    child: const Icon(
                      Icons.add_box_outlined,
                      color: Colors.white,
                    ),
                  )),
              label: '.',
            ),
            BottomNavigationBarItem(
                icon: _selectedIndex == 3
                    ? const Icon(Icons.account_balance_wallet)
                    : const Icon(Icons.account_balance_wallet_outlined),
                label: '.'),
            const BottomNavigationBarItem(
                icon: Icon(Icons.person_outline), label: '.'),
          ],
        ));
  }
}
