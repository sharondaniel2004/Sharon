import 'package:flutter/material.dart';
import 'package:flutter_application_1/Theme/color.dart';
import 'package:flutter_application_1/constant/BottomNavBar.dart';
import 'package:flutter_application_1/screens/MEnuPage.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

class Wrapper extends StatefulWidget {
  const Wrapper({super.key});

  @override
  State<Wrapper> createState() => _WrapperState();
}

class _WrapperState extends State<Wrapper> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'TNGPC',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: fRed,
        ),
        useMaterial3: true,
      ),
      routes: {
        "MenuPage": (c) => const MenuPage(),
      },
      home: const BottomNavBar(),
    );
  }
}
