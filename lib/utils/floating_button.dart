import 'package:flutter/material.dart';

class FloatingButton extends StatefulWidget {
  const FloatingButton({super.key});

  @override
  State<FloatingButton> createState() => _FloatingButtonState();
}

class _FloatingButtonState extends State<FloatingButton> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        height: 50,
        width: 365,
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(15),
          // boxShadow: [
          //   BoxShadow(color: Colors.black, blurRadius: 15, spreadRadius: 0),
          // ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Book Now',
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            SizedBox(width: 20),
            Image.asset('assets/sendarrow.png'),
          ],
        ),
      ),
    );
  }
}
