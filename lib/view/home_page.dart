import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:uzairways/view/screens/accountscreen.dart';
import 'package:uzairways/view/screens/homescreen.dart';
import 'package:uzairways/view/screens/menuscreen.dart';
import 'package:uzairways/view/screens/servicesscreen.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<Widget> _screens = <Widget>[
    const HomeScreen(),
    const ServicesScreen(),
    const AccountScreen(),
    const MenuScreen(),
  ];
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.blue[400],
      body: _screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (v) {
          _currentIndex = v;
          setState(() {});
        },
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: FaIcon(
              FontAwesomeIcons.plane,
              color: Colors.black,
            ),
            label: "Chipta topish",
          ),
          BottomNavigationBarItem(
            icon: FaIcon(
              FontAwesomeIcons.list,
              color: Colors.black,
            ),
            label: "Xizmatlar",
          ),
          BottomNavigationBarItem(
            icon: FaIcon(
              FontAwesomeIcons.user,
              color: Colors.black,
            ),
            label: "Kabinet",
          ),
          BottomNavigationBarItem(
            icon: FaIcon(
              FontAwesomeIcons.bars,
              color: Colors.black,
            ),
            label: "Menyu",
          ),
        ],
      ),
    );
  }
}
