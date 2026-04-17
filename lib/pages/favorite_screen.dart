import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mukaram_sir_task/pages/homeScreen.dart';

class FavoriteScreen extends StatefulWidget {
  const FavoriteScreen({super.key});

  @override
  State<FavoriteScreen> createState() => _FavoriteScreenState();
}

class _FavoriteScreenState extends State<FavoriteScreen> {
  @override
  Widget build(BuildContext context) {
    log("the length of mhy data ${favouriteListNew.value.length}");

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Favorite Places',
          style: GoogleFonts.lobster(fontWeight: FontWeight.w500, fontSize: 35),
        ),
      ),

      body: SafeArea(
        child: Expanded(
          child: ValueListenableBuilder(
            valueListenable: favouriteListNew,
            builder: (context, childnew, val) {
              if (favouriteListNew.value.isEmpty) {
                return const Center(child: Text('No favorite data yet'));
              }
              return ListView.builder(
                itemCount: childnew.length,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      color: Colors.white,
                      child: ListTile(
                        title: Text(favouriteListNew.value[index].toString()),
                      ),
                    ),
                  );
                },
              );
            },
          ),
        ),
      ),
    );
  }
}
