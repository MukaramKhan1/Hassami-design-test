import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mukaram_sir_task/utils/appColors.dart';

class CustomeSearchbar extends StatefulWidget {
  const CustomeSearchbar({super.key});

  @override
  State<CustomeSearchbar> createState() => _CustomeSearchbarState();
}

class _CustomeSearchbarState extends State<CustomeSearchbar> {
  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.sizeOf(context).width;
    // final h = MediaQuery.sizeOf(context).height;
    return SizedBox(
      height: 50,
      width: w,
      child: TextField(
        textAlign: TextAlign.start,
        cursorColor: Appcolors.grey,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.all(10),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Appcolors.searchbarColor),
            borderRadius: BorderRadius.circular(15),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Appcolors.searchbarColor),
            borderRadius: BorderRadius.circular(15),
          ),
          hint: Text(
            'Search Places',
            style: GoogleFonts.roboto(color: Appcolors.grey),
          ),
          suffixIcon: SizedBox(
            width: 70,
            child: Row(
              children: [
                Container(
                  height: 30,
                  width: 2,
                  color: Appcolors.searchbarColor,
                ),
                SizedBox(width: 20),
                // Icon(Icons.format_list_bulleted_rounded, color: Appcolors.grey),
                Image.asset('assets/filterIcon.png', color: Appcolors.grey),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
