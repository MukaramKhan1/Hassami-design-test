import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FavoriteScreen extends StatefulWidget {
  const FavoriteScreen({super.key});

  @override
  State<FavoriteScreen> createState() => _FavoriteScreenState();
}

class _FavoriteScreenState extends State<FavoriteScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Favorite Places',
          style: GoogleFonts.lobster(fontWeight: FontWeight.w500, fontSize: 35),
        ),
      ),
      body: SafeArea(
        child: Expanded(
          child: ListView.builder(
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(color: Colors.amberAccent, child: ListTile()),
              );
            },
          ),
        ),
      ),
    );
  }
}
