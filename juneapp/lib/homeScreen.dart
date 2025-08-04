import 'package:flutter/material.dart';
import 'package:juneapp/DataScreen.dart';
import 'package:juneapp/FirstScreen.dart';
import 'package:juneapp/OfflineScreen.dart';
import 'package:juneapp/SearchScreen.dart';

class homeScreen extends StatefulWidget {
  const homeScreen({super.key});

  @override
  State<homeScreen> createState() => _homeScreenState();
}

class _homeScreenState extends State<homeScreen> {
  int selectedIndex = 0;

  List<Widget> screens = [
    FirstScreen(),
    SearchScreen(),
    DataScreen(),
    Offlinescreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      floatingActionButton: FloatingActionButton(onPressed: () {

      },
      child: Icon(Icons.add),

      ),

      floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: true,
        showUnselectedLabels: true,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.black,
        currentIndex: selectedIndex,
        onTap: (value) {
          setState(() {
            selectedIndex = value;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: "Search",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.h_plus_mobiledata_sharp),
            label: "Data",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.portable_wifi_off_outlined),
            label: "Offline",
          )
        ],
      ),
      body: screens[selectedIndex],
      );
  }
}