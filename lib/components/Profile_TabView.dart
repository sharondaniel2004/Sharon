import 'package:flutter/material.dart';
import 'package:flutter_application_1/Theme/color.dart';
import 'package:flutter_application_1/components/ProductStaticData.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileTabView extends StatefulWidget {
  const ProfileTabView({super.key});

  @override
  State<ProfileTabView> createState() => _ProfileTabViewState();
}

class _ProfileTabViewState extends State<ProfileTabView> {
  ProductStaticData product = Get.put(ProductStaticData());
  @override
  Widget build(BuildContext context) {
    final Screen = MediaQuery.sizeOf(context);
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        mainAxisExtent: 10,
        childAspectRatio: Screen.width / Screen.height * 1.4,
      ),
      itemCount: product.profile.length,
      itemBuilder: (context, index) {
        return Column(
          children: [
            Container(
              height: Screen.height * 0.3,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                    product.profile[index]['image'].toString(),
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Text(
              product.profile[index]['name'].toString(),
              style: GoogleFonts.poppins(
                fontSize: 15,
                fontWeight: FontWeight.w600,
                color: fBlack,
              ),
            )
          ],
        );
      },
    );
  }
}
