import 'package:flutter/material.dart';
import 'package:operator_app/constant/color.dart';
import 'package:operator_app/constant/style.dart';

import 'package:operator_app/userData/operator_data.dart';
import 'package:operator_app/widget/home_screen_content.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    _operatorData = OperatorData().getOperatorData();

    super.initState();
  }

  late List _operatorData;
  int _selectedIndex = 0;
  late final List<Widget> _widgetOptions = <Widget>[
    HomeScreenContent(operatorData: _operatorData),
    HomeScreenContent(operatorData: _operatorData),
    HomeScreenContent(operatorData: _operatorData),
    HomeScreenContent(operatorData: _operatorData),
  ];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteSecondary,
      body: _widgetOptions.elementAt(_selectedIndex),

      //bottom nav bar
      bottomNavigationBar: ClipRRect(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(8.0),
          topRight: Radius.circular(8.0),
        ),
        child: Container(
          color: btnColor,
          padding: const EdgeInsets.symmetric(horizontal: 29),
          child: BottomNavigationBar(
            elevation: 0,
            backgroundColor: btnColor,
            selectedFontSize: 12,
            unselectedFontSize: 12,
            selectedItemColor: Colors.white,
            unselectedItemColor: const Color(0xffFBFBFB).withOpacity(0.44),
            selectedLabelStyle: contentStyle.copyWith(fontSize: 12),
            iconSize: 21,
            type: BottomNavigationBarType.fixed,
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage(
                    'images/home.png',
                  ),
                ),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage(
                    'images/tick.png',
                  ),
                ),
                label: 'Task',
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage(
                    'images/pajamas_status.png',
                  ),
                ),
                label: 'Status',
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage(
                    'images/tick.png',
                  ),
                ),
                label: 'Profile',
              ),
            ],
            currentIndex: _selectedIndex,
            onTap: _onItemTapped,
          ),
        ),
      ),
    );
  }
}
