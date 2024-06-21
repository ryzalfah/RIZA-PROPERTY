import 'package:flutter/material.dart';
import 'package:riza_property/home/beranda.dart';
import 'package:riza_property/home/profil.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _bottomNavCurrentIndex = 0;
  List<Widget> _Container = [
    new Beranda(),
    new Profilpage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _Container[_bottomNavCurrentIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        onTap: (index) {
          setState(() {
            _bottomNavCurrentIndex = index;
          });
        },
        currentIndex: _bottomNavCurrentIndex,
        items: [
          BottomNavigationBarItem(
            activeIcon: new Icon(
              Icons.home,
              color: Colors.grey,
            ),
            icon: new Icon(
              Icons.home,
              color: Colors.grey,
            ),
            label: 'Beranda',
            backgroundColor: Colors.black,
          ),
          BottomNavigationBarItem(
            activeIcon: new Icon(
              Icons.person,
              color: Colors.grey,
            ),
            icon: new Icon(
              Icons.person_outline,
              color: Colors.grey,
            ),
            label: 'Profile',
            backgroundColor: Colors.black,
          ),
        ],
      ),
    );
  }
}
