// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter_application_1/Theme/color.dart';
import 'package:flutter_application_1/screens/MEnuPage.dart';
import 'package:flutter_application_1/screens/Profile.dart';
import 'package:flutter_application_1/screens/function.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int currentindex = 0;
  final Screens = [
    const opration(),
    const MenuPage(),
    const Profile(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Screens[currentindex],
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          border: Border(
            top: BorderSide(color: fBlack, width: 0.4),
          ),
        ),
        child: BottomNavigationBar(
          selectedLabelStyle: GoogleFonts.poppins(
            fontSize: 15,
            color: fBlack,
          ),
          unselectedLabelStyle: GoogleFonts.poppins(
            fontSize: 15,
            color: fBlack,
          ),
          showSelectedLabels: true,
          showUnselectedLabels: true,
          elevation: 0,
          unselectedItemColor: fBlack,
          selectedItemColor: fRed,
          type: BottomNavigationBarType.fixed,
          backgroundColor:
              const Color.fromARGB(255, 255, 255, 255).withOpacity(0.3),
          currentIndex: currentindex,
          iconSize: 22,
          onTap: (index) {
            setState(() {
              currentindex = index;
            });
          },
          items: [
            BottomNavigationBarItem(
                icon: SvgPicture.network(
                  'https://www.svgrepo.com/show/520873/notification-9.svg',
                  height: 22,
                  width: 22,
                  color: fBlack,
                ),
                activeIcon: SvgPicture.network(
                  'https://www.svgrepo.com/show/520873/notification-9.svg',
                  height: 22,
                  width: 22,
                  color: fdarkblue,
                ),
                label: 'HOME'),
            BottomNavigationBarItem(
                icon: SvgPicture.network(
                  'https://www.svgrepo.com/show/520873/notification-9.svg',
                  height: 22,
                  width: 22,
                  color: fBlack,
                ),
                activeIcon: SvgPicture.network(
                  'https://www.svgrepo.com/show/520873/notification-9.svg',
                  height: 22,
                  width: 22,
                  color: fdarkblue,
                ),
                label: 'MENU'),
            BottomNavigationBarItem(
                icon: SvgPicture.network(
                  'https://www.svgrepo.com/show/520873/notification-9.svg',
                  height: 22,
                  width: 22,
                  color: fBlack,
                ),
                activeIcon: SvgPicture.network(
                  'https://www.svgrepo.com/show/520873/notification-9.svg',
                  height: 22,
                  width: 22,
                  color: fdarkblue,
                ),
                label: 'PEOFILE'),
          ],
        ),
      ),
    );
  }
}
