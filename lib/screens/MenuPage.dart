import 'package:flutter/material.dart';
import 'package:flutter_application_1/Theme/color.dart';
import 'package:flutter_application_1/components/Beverage_TabView.dart';
import 'package:flutter_application_1/components/Profile_TabView.dart';

import 'package:google_fonts/google_fonts.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({super.key});

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 2, vsync: this);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Menu',
          style: GoogleFonts.poppins(
            fontSize: 20,
            color: fBlack,
            fontWeight: FontWeight.w600,
          ),
        ),
        bottom: TabBar(
          controller: _tabController,
          tabs: const [
            Tab(
              text: 'BEVERAGE',
            ),
            Tab(
              text: 'PROFILE',
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: TabBarView(
          controller: _tabController,
          children: const [
            BeverageTabView(),
            ProfileTabView(),
          ],
        ),
      ),
    );
  }
}
