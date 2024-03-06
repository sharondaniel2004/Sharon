import 'package:flutter/material.dart';
import 'package:flutter_application_1/constant/RsWidget.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

class opration extends StatelessWidget {
  const opration({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        centerTitle: true,
        title: Text(
          'Home',
          style: GoogleFonts.poppins(
            fontSize: 20,
            fontWeight: FontWeight.w700,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const opration(),
                  ),
                );
              },
              child: trialwiget(
                img: '',
                img2: '',
              ),
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 50,
                width: 400,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.grey.withOpacity(0.1),
                ),
                child: TextField(
                  decoration: InputDecoration(
                    labelStyle: GoogleFonts.poppins(
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        color: Colors.grey),
                    labelText: 'Search on Kupa',
                    prefixIcon: const Icon(
                      Icons.search_rounded,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(
                        color: Colors.grey,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ),
              ),
              const Gap(
                10,
              ),
              Container(
                height: 135,
                width: 400,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: const DecorationImage(
                    image: NetworkImage(
                      'https://b3067249.smushcdn.com/3067249/wp-content/uploads/2023/03/chicken-Biryani-848x477.jpg?lossy=0&strip=1&webp=1',
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Discount of 15%',
                        style: GoogleFonts.poppins(
                            fontSize: 30,
                            fontWeight: FontWeight.w700,
                            color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ),
              const Gap(
                15,
              ),
              Container(
                height: 175,
                width: 400,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: const DecorationImage(
                    image: NetworkImage(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRE32ol7wlvXXAHV9cykcPhov7Zj_TYvSfP1w&usqp=CAU',
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Chicken Teriyaki',
                        style: GoogleFonts.poppins(
                            fontSize: 30,
                            fontWeight: FontWeight.w700,
                            color: Colors.white),
                      ),
                      Text(
                        'Discount of 15%',
                        style: GoogleFonts.poppins(
                            fontSize: 30,
                            fontWeight: FontWeight.w700,
                            color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ),
              const Gap(
                13,
              ),
              Text(
                'Top of Week',
                style: GoogleFonts.poppins(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: Colors.black),
              ),
              Gap(
                10,
              ),
              const SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    RsWidget(
                      img:
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRR6e39uIEKJxFcnA9yHZ963i5AiBwe-mMEfQ&usqp=CAU',
                      rs: 'RS:400',
                      name: 'Panner Chicken',
                    ),
                    Gap(
                      15,
                    ),
                    RsWidget(
                      img:
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRR6e39uIEKJxFcnA9yHZ963i5AiBwe-mMEfQ&usqp=CAU',
                      rs: 'RS:400',
                      name: 'Panner Chicken',
                    ),
                    Gap(
                      15,
                    ),
                    RsWidget(
                      img:
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRR6e39uIEKJxFcnA9yHZ963i5AiBwe-mMEfQ&usqp=CAU',
                      rs: 'RS:400',
                      name: 'Panner Chicken',
                    ),
                    Gap(
                      15,
                    ),
                    RsWidget(
                      img:
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRR6e39uIEKJxFcnA9yHZ963i5AiBwe-mMEfQ&usqp=CAU',
                      rs: 'RS:400',
                      name: 'Panner Chicken',
                    ),
                    Gap(
                      15,
                    ),
                    RsWidget(
                      img:
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRR6e39uIEKJxFcnA9yHZ963i5AiBwe-mMEfQ&usqp=CAU',
                      rs: 'RS:400',
                      name: 'Panner Chicken',
                    ),
                    Gap(
                      15,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class trialwiget extends StatelessWidget {
  const trialwiget({
    super.key,
    required this.img,
    required this.img2,
  });
  final String img;
  final String img2;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        image: DecorationImage(
          image: NetworkImage(img),
        ),
      ),
      child: SvgPicture.network(
        img2,
      ),
    );
  }
}
