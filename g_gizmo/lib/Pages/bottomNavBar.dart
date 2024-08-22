import 'package:flutter/material.dart';
import 'package:g_gizmo/Pages/cart.dart';
import 'package:g_gizmo/Pages/favourite.dart';
import 'package:g_gizmo/Pages/home.dart';
import 'package:g_gizmo/Pages/profile.dart';

class BottomNavbar extends StatefulWidget {
  const BottomNavbar({super.key});

  @override
  _BottomNavBar createState() => _BottomNavBar();
}

class _BottomNavBar extends State<BottomNavbar> {
  int _pageIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    Home(index: int.fromEnvironment(''), name: String.fromEnvironment('')),
    Cart(),
    Favourite(),
    Account()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _pageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      // appBar: AppBar(
      //   title: Text('Bottom Navigation Bar Demo'),
      // ),
      body: Center(
        child: _widgetOptions.elementAt(_pageIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        mouseCursor: MouseCursor.defer,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite,),
            label: 'Favourites',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Account',
          ),
        ],
        currentIndex: _pageIndex,
        selectedItemColor: const Color(0xFF25364A),
        unselectedItemColor: Colors.blueGrey, // Set unselected item color
        backgroundColor: Colors.white70,
        onTap: _onItemTapped,
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: (){
      //     Navigator.pushNamed(context, '/apple');
      //     setState(() {
      //       _pageIndex = 4;
      //     });
      //   },
      //   child: const Icon(Icons.important_devices_rounded),
      // ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
