import 'package:e_forest/view/ListPage/acaraTersimpan.dart';
import 'package:e_forest/view/ListPage/dashboard.dart';
import 'package:e_forest/view/acara.dart';
import 'package:e_forest/view/splashscreen.dart';
import 'package:flutter/material.dart';

class HalamanUtama extends StatefulWidget {
  static String route = "/halamanUtama";
  @override
  State<HalamanUtama> createState() => _HalamanUtamaState();
}

class _HalamanUtamaState extends State<HalamanUtama> {
  int _selectedIndex = 2;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  static List<Widget> PageList = [
    Container(
      child: Center(
        child: Text("Profile"),
      ),
    ),
    Acara(),
    Dashboard(),
    Container(
      child: Center(
        child: Text("Riwayat"),
      ),
    ),
    AcaraTersimpan(),
  ];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Center(
        child: PageList.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.black,
          unselectedItemColor: Color.fromARGB(100, 117, 164, 136),
          showSelectedLabels: false,
          showUnselectedLabels: false,
          onTap: (index) {
            _onItemTapped(index);
          },
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
              ),
              label: "home",
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.calendar_month), label: "home"),
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "home"),
            BottomNavigationBarItem(
                icon: Icon(Icons.book_sharp), label: "home"),
            BottomNavigationBarItem(
                icon: Icon(Icons.bookmark_rounded), label: "Dashboard")
          ]),
    );
  }
}
