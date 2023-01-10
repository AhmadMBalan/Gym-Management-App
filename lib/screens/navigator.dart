import 'package:flutter/material.dart';
import 'package:my_gym_manager/screens/equipments/equipments_screen.dart';
import 'package:my_gym_manager/screens/home/home_screen.dart';
import 'package:my_gym_manager/screens/income_expenses/inc_exp_screen.dart';
import 'package:my_gym_manager/screens/members/members_screen.dart';
import 'package:my_gym_manager/screens/trainers/trainers_screen.dart';

class BottomNavBar extends StatefulWidget {
  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  final List _screens = [
    TrainersScreen(),
    MembersScreen(),
    HomeScreen(),
    EquipmentsScreen(),
    IncExpScreen(),
  ];

  int _currentIndex = 2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) => setState(() => _currentIndex = index),
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.blue[50],
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
        elevation: 0.0,
        items: [
          Icons.person,
          Icons.group,
          Icons.home,
          Icons.fitness_center,
          Icons.bar_chart,
        ]
            .asMap()
            .map(
              (key, value) => MapEntry(
                key,
                BottomNavigationBarItem(
                  label: '',
                  icon: Container(
                    padding: const EdgeInsets.symmetric(
                      vertical: 6.0,
                      horizontal: 16.0,
                    ),
                    decoration: BoxDecoration(
                      color: _currentIndex == key
                          ? Colors.blue[600]
                          : Colors.transparent,
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: Icon(value),
                  ),
                ),
              ),
            )
            .values
            .toList(),
      ),
    );
  }
}
