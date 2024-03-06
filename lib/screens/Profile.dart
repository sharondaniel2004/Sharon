import 'package:flutter/material.dart';
import 'package:flutter_application_1/Theme/color.dart';
import 'package:flutter_application_1/screens/MenuPage.dart';

import 'package:google_fonts/google_fonts.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController tabController = TabController(length: 2, vsync: this);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Profile',
          style: GoogleFonts.poppins(
            fontSize: 20,
            color: fBlack,
            fontWeight: FontWeight.w600,
          ),
        ),
        bottom: TabBar(
          controller: tabController,
          tabs: const [
            Tab(
              text: 'USER NAME',
            ),
            Tab(
              text: 'USER ID',
            ),
          ],
        ),
        actions: [
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const MenuPage(),
                ),
              );
            },
            child: const Icon(
              Icons.notification_add_rounded,
              weight: 15,
              size: 15,
            ),
          )
        ],
      ),
      body: TabBarView(
        controller: tabController,
        children: const [],
      ),
    );
  }
}
