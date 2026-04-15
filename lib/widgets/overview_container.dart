import 'package:flutter/material.dart';

class OverviewContainer extends StatefulWidget {
  const OverviewContainer({super.key, required this.child});
  final Widget child;

  @override
  State<OverviewContainer> createState() => _OverviewContainerState();
}

class _OverviewContainerState extends State<OverviewContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 50,
      decoration: BoxDecoration(
        color: const Color.fromARGB(144, 217, 214, 204),
        borderRadius: BorderRadius.circular(10),
      ),
      child: widget.child,
    );
  }
}
