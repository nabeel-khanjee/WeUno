import 'package:flutter/material.dart';
import 'package:we_uno_task/utils/colors.dart';
import 'package:we_uno_task/views/Cart/cart.dart';
import 'package:we_uno_task/views/Home/home.dart';
import 'package:we_uno_task/views/More/more.dart';
import 'package:we_uno_task/views/Search/search.dart';

class AppLayout extends StatefulWidget {
  const AppLayout({Key? key}) : super(key: key);

  @override
  State<AppLayout> createState() => _AppLayoutState();
}

class _AppLayoutState extends State<AppLayout> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    SearchScreen(),
    CartScreen(),
    CartScreen(),
    MoreScreen()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    const items = const <BottomNavigationBarItem>[
      BottomNavigationBarItem(
        icon: Icon(Icons.home),
        label: 'Home',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.search),
        label: 'Search',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.card_travel),
        label: 'Cart',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.category),
        label: 'Catergories',
      ),
      BottomNavigationBarItem(
        icon: Icon(
          Icons.menu_open_sharp,
        ),
        label: 'More',
      ),
    ];
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30), topRight: Radius.circular(30))),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: BottomNavigationBar(
            items: items,

            // backgroundColor: Colors.green,
            currentIndex: _selectedIndex,
            unselectedItemColor: bodyTextColor,
            elevation: 0,
            // fixedColor: bodyTextColor,
            selectedItemColor: primaryColor,
            showUnselectedLabels: true,
            onTap: _onItemTapped,
          ),
        ),
      ),
    );
  }
}
