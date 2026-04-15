import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mukaram_sir_task/utils/appColors.dart';
import 'package:mukaram_sir_task/utils/floating_button.dart';
import 'package:mukaram_sir_task/widgets/overview_container.dart';

class DetailsPage extends StatefulWidget {
  const DetailsPage({super.key});

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  int ontapindex = 0;
  List tabs = ['Overview', 'Details'];
  @override
  Widget build(BuildContext context) {
    // final w=MediaQuery.sizeOf(context).width;
    // final h=MediaQuery.sizeOf(context).height;
    return Scaffold(
      floatingActionButton: FloatingButton(),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            children: [
              // FloatingButton(),
              Stack(
                children: [
                  Container(
                    height: 390,
                    width: 400,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 5,
                          spreadRadius: 0,
                          offset: Offset(0, 8),
                        ),
                      ],
                      image: DecorationImage(
                        image: AssetImage('assets/viewImage02.png'),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 30,
                    left: 20,
                    right: 20,
                    child: Container(
                      height: 90,
                      width: 160,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(178, 48, 47, 47),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: 'Andes Mountain',
                                    style: GoogleFonts.inter(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 24,
                                    ),
                                  ),
                                  TextSpan(
                                    text: '                  Price',
                                    style: GoogleFonts.roboto(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 16,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 10),
                            Row(
                              children: [
                                Image.asset('assets/locationicon.png'),
                                Text(
                                  ' South, America',
                                  style: GoogleFonts.roboto(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 18,
                                    color: Appcolors.white,
                                  ),
                                ),
                                SizedBox(width: 97),
                                RichText(
                                  text: TextSpan(
                                    children: [
                                      TextSpan(
                                        text: '\$',
                                        style: GoogleFonts.roboto(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 16,
                                          color: const Color.fromARGB(
                                            255,
                                            167,
                                            160,
                                            98,
                                          ),
                                        ),
                                      ),
                                      TextSpan(
                                        text: ' 230',
                                        style: GoogleFonts.roboto(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 19,
                                          color: Appcolors.white,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 20,
                    top: 10,
                    child: Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(125, 48, 47, 47),
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: InkWell(
                        onTap: () {
                          // Navigator.pop(context);
                        },
                        child: Icon(
                          Icons.arrow_back_ios_new_rounded,
                          color: Appcolors.white,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    right: 20,
                    top: 10,
                    child: Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(125, 48, 47, 47),
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Image.asset(
                        'assets/saveIcon.png',
                        color: Appcolors.white,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30),
              Row(
                children: [
                  InkWell(
                    onTap: () {
                      setState(() {
                        ontapindex = 0;
                      });
                    },
                    child: Text(
                      'Overview',
                      style: GoogleFonts.inter(
                        fontWeight: FontWeight.w600,
                        fontSize: ontapindex == 0 ? 22 : 16,
                      ),
                    ),
                  ),
                  SizedBox(width: 20),
                  InkWell(
                    onTap: () {
                      setState(() {
                        ontapindex = 1;
                      });
                    },
                    child: Text(
                      'Details',
                      style: GoogleFonts.inter(
                        fontWeight: FontWeight.w600,
                        fontSize: ontapindex == 1 ? 22 : 16,
                        color: Appcolors.grey,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30),
              SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: ontapindex == 0
                    ? Column(
                        children: [
                          Row(
                            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              OverviewContainer(
                                child: Icon(
                                  Icons.access_time_filled_rounded,
                                  size: 20,
                                  color: const Color.fromARGB(190, 12, 12, 12),
                                ),
                              ),
                              SizedBox(width: 10),
                              Text(
                                '8 hours',
                                style: GoogleFonts.roboto(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 18,
                                  color: Appcolors.greytext,
                                ),
                              ),
                              SizedBox(width: 43),
                              OverviewContainer(
                                child: Icon(
                                  Icons.cloud_rounded,
                                  size: 20,
                                  color: const Color.fromARGB(190, 12, 12, 12),
                                ),
                              ),
                              SizedBox(width: 10),
                              Text(
                                '16 c',
                                style: GoogleFonts.roboto(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 18,
                                  color: Appcolors.greytext,
                                ),
                              ),
                              SizedBox(width: 43),
                              OverviewContainer(
                                child: Image.asset('assets/startimage.png'),
                              ),
                              SizedBox(width: 10),

                              Text(
                                '4.5',
                                style: GoogleFonts.roboto(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 18,
                                  color: Appcolors.greytext,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 30),
                          Text(
                            'This vast mountain range is renowned for its remarkable diversity in terms of topography and climate. It features towering peaks, active volcanoes, deep canyons, expansive plateaus,and lush valleys. ',
                            style: GoogleFonts.roboto(
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                              color: Appcolors.grey,
                            ),
                          ),
                        ],
                      )
                    : Text('We will update soon'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
