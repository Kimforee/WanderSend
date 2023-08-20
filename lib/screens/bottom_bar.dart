import 'package:WanderSend/screens/home_screen.dart';
import 'package:WanderSend/screens/profile.dart';
import 'package:WanderSend/screens/info_file.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class BottomBar extends StatefulWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {

  int _selectedIndex = 0;
  static final List<Widget>_widgetOptions = <Widget>[
    HomeScreen(),
    info_file(),
    const Text("Track"),
    profile()
  ];

  void _onItemTapped(int index)
  {
    setState(() {
      _selectedIndex = index;
    });
    print("${_selectedIndex}");
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body:Center(
        child: _widgetOptions[_selectedIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        elevation: 20,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: Colors.blueGrey,
        type: BottomNavigationBarType.fixed,
        unselectedItemColor: const Color(0xFF526480),
        items:const [
          BottomNavigationBarItem(icon: Icon(FluentSystemIcons.ic_fluent_home_regular),
              activeIcon: Icon(FluentSystemIcons.ic_fluent_home_filled),
              label: "Home"),
          BottomNavigationBarItem(icon: Icon(FluentSystemIcons.ic_fluent_people_search_regular),
              activeIcon: Icon(FluentSystemIcons.ic_fluent_people_search_filled),
              label: "Get Info"),
          BottomNavigationBarItem(icon: Icon(FluentSystemIcons.ic_fluent_globe_location_regular),
              activeIcon: Icon(FluentSystemIcons.ic_fluent_globe_location_filled),
              label: "Track"),
          BottomNavigationBarItem(icon: Icon(FluentSystemIcons.ic_fluent_person_regular),
              activeIcon: Icon(FluentSystemIcons.ic_fluent_person_filled),
              label: "Profile"),
        ],
      ),
    );
  }
}
