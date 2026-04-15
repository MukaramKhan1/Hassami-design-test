import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mukaram_sir_task/utils/appColors.dart';
import 'package:mukaram_sir_task/utils/bottom_navigation.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 5), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => Bottomnavigator()),
      );
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topRight,
          colors: [
            const Color.fromARGB(255, 92, 194, 228),
            const Color.fromARGB(255, 9, 67, 115),
          ],
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Travel',
                style: GoogleFonts.lobster(
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                  fontSize: 44,
                  decoration: TextDecoration.none,
                ),
              ),
              SizedBox(width: 10),
              Image.asset(
                'assets/globeIcon.png',
                fit: BoxFit.contain,
                width: 44,
                height: 44,
              ),
            ],
          ),
          SizedBox(height: 20),
          Text(
            '  Find Your Dream \n Destination With Us',
            style: GoogleFonts.roboto(
              fontWeight: FontWeight.w500,
              fontSize: 20,
              decoration: TextDecoration.none,
              color: Appcolors.white,
            ),
          ),
        ],
      ),
    );
  }
}
