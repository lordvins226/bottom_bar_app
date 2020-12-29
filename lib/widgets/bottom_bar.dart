import 'package:bottom_bar_app/views/home.dart';
import 'package:bottom_bar_app/views/profile.dart';
import 'package:bottom_bar_app/views/setting.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _index = 0;
  var currentTab = [HomeView(), ProfileView(), SettingView()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: currentTab[_index],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "profile"),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings), label: "Settings"),
        ],
        currentIndex: _index,
        onTap: (int index) {
          setState(() {
            _index = index;
          });
        },
      ),
    );
  }
}
