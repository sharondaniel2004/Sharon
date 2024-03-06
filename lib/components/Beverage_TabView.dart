import 'package:flutter/material.dart';
import 'package:flutter_application_1/Theme/color.dart';
import 'package:flutter_application_1/components/ProductStaticData.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:google_fonts/google_fonts.dart';

class BeverageTabView extends StatefulWidget {
  const BeverageTabView({super.key});

  @override
  State<BeverageTabView> createState() => _BeverageTabViewState();
}

class _BeverageTabViewState extends State<BeverageTabView> {
  ProductStaticData productdata = Get.put(ProductStaticData());
  @override
  Widget build(BuildContext context) {
    final screensize = MediaQuery.sizeOf(context);
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
          childAspectRatio: screensize.width / screensize.height * 1.4),
      itemCount: productdata.Beverage.length,
      itemBuilder: (context, index) {
        return Column(
          children: [
            Container(
              height: screensize.height * 0.3,
              decoration: BoxDecoration(
                color: fLiteWhite,
                image: DecorationImage(
                  image: NetworkImage(
                    productdata.Beverage[index]['image'].toString(),
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Text(
              productdata.Beverage[index]['name'].toString(),
              style: GoogleFonts.poppins(
                  fontSize: 15, fontWeight: FontWeight.w600, color: fBlack),
            ),
          ],
        );
      },
    );
  }
}
