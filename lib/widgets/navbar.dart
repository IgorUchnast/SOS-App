import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:sos_app/pages/home_page.dart';
import 'package:sos_app/pages/information_page.dart';
import 'package:sos_app/pages/map_page.dart';
import 'package:sos_app/pages/person_page.dart';

class NavBar extends StatefulWidget {
  @override
  _NavBarState createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int _selectedIndex = 0;
  final List<Widget> _pages = [
    HomePage(),
    MapPage(),
    InformationPage(),
    PersonPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: Container(
        margin: EdgeInsets.only(bottom: 15),
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 20.0),
          child: GNav(
            backgroundColor: Colors.white,
            color: Colors.black,
            activeColor: Colors.black,
            tabBackgroundColor: Colors.red.shade100,
            gap: 8,
            padding: EdgeInsets.all(16),
            selectedIndex: _selectedIndex,
            onTabChange: (index) {
              setState(() {
                _selectedIndex = index;
              });
            },
            tabs: [
              GButton(
                icon: Icons.home,
                text: 'Strona Główna',
              ),
              GButton(
                icon: Icons.location_on,
                text: 'Mapy',
              ),
              GButton(
                icon: Icons.info_outline,
                text: 'Informacja',
              ),
              GButton(
                icon: Icons.person,
                text: 'Moje dane',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
