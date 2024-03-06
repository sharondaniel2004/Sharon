import 'package:flutter/material.dart';
import 'package:flutter_application_1/Theme/color.dart';
import 'package:google_fonts/google_fonts.dart';

class RsWidget extends StatelessWidget {
  const RsWidget({
    super.key,
    required this.img,
    required this.rs,
    required this.name,
  });
  final String img;
  final String name;
  final String rs;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 200,
      width: 150,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: fWhite,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            alignment: Alignment.center,
            height: 155,
            width: 150,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: fWhite,
              image: DecorationImage(
                image: NetworkImage(img),
                fit: BoxFit.fill,
              ),
            ),
          ),
          Text(
            name,
            style: GoogleFonts.poppins(
              fontSize: 15,
              fontWeight: FontWeight.w600,
            ),
          ),
          Text(
            rs,
            style: GoogleFonts.poppins(
              fontSize: 15,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}
