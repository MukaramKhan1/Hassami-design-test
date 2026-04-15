import 'package:flutter/material.dart';

class Tabs extends StatefulWidget {
  const Tabs({super.key, required this.child, required this.color});
  final Widget child;
  final Color color;

  @override
  State<Tabs> createState() => _TabsState();
}

class _TabsState extends State<Tabs> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 44,
      width: 120,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: widget.color,
        // boxShadow: [
        //   BoxShadow(
        //     blurRadius: 6,
        //     color: Colors.grey,
        //     offset: Offset(0, 5),
        //     spreadRadius: 0,
        //   ),
        // ],
      ),
      child: widget.child,
    );
  }
}
