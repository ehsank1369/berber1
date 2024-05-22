import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_barber_04/contants/colors.dart';
import 'package:flutter_barber_04/screens/my_reservation.dart';
import 'package:flutter_barber_04/screens/enter_screen.dart';
import 'package:flutter_barber_04/screens/home_screen.dart';
import 'package:flutter_barber_04/screens/information_screen.dart';
import 'package:flutter_barber_04/screens/primary_register_screen.dart';
import 'package:flutter_barber_04/screens/profile_screen.dart';
import 'package:flutter_barber_04/screens/information_account_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _selectedIndexNavigation = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color(0xff25262A),
        body: IndexedStack(
          index: _selectedIndexNavigation,
          children: getScreen(),
        ),
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 15),
          child: ClipRRect(
            borderRadius: const BorderRadius.all(Radius.circular(45)),
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 40, sigmaY: 40),
              child: BottomNavigationBar(
                backgroundColor: Colors.white24,
                elevation: 0,
                currentIndex: _selectedIndexNavigation,
                type: BottomNavigationBarType.fixed,
                showSelectedLabels: false,
                showUnselectedLabels: false,
                onTap: ((int index) {
                  setState(() {
                    _selectedIndexNavigation = index;
                  });
                }),
                items: [
                  BottomNavigationBarItem(
                      icon: Container(
                        child: Image.asset(
                            'assets/images/icon_home_disactive.png'),
                      ),
                      activeIcon: Container(
                        child:
                            Image.asset('assets/images/icon_home_active.png'),
                      ),
                      label: 'سلام'),
                  BottomNavigationBarItem(
                      icon: Container(
                        child: Image.asset(
                            'assets/images/icon_rezerv_disactive.png'),
                      ),
                      activeIcon: Container(
                        child:
                            Image.asset('assets/images/icon_rezerv_active.png'),
                      ),
                      label: 'سلام'),
                  BottomNavigationBarItem(
                      icon: Container(
                        child: Image.asset(
                            'assets/images/icon_phone_disactive.png'),
                      ),
                      activeIcon: Container(
                        child:
                            Image.asset('assets/images/icon_phone_active.png'),
                      ),
                      label: 'سلام'),
                  BottomNavigationBarItem(
                      icon: Container(
                        child: Image.asset(
                            'assets/images/icon_profile_disactive.png'),
                      ),
                      activeIcon: Container(
                        child: Image.asset(
                            'assets/images/icon_profile_active.png'),
                      ),
                      label: 'سلام'),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  List<Widget> getScreen() {
    return <Widget>[
      const HomeScreen(),
      const MyReservation(),
      const InformationScreen(),
      const ProfileScreen()
    ];
  }
}
