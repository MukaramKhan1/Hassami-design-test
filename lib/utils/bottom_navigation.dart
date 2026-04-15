import 'package:flutter/material.dart';
import 'package:mukaram_sir_task/pages/favorite_screen.dart';
import 'package:mukaram_sir_task/pages/homescreen.dart';
import 'package:mukaram_sir_task/pages/overview_screen.dart';
import 'package:mukaram_sir_task/pages/profile_screen.dart';
import 'package:mukaram_sir_task/utils/appColors.dart';

class Bottomnavigator extends StatefulWidget {
  const Bottomnavigator({super.key});

  @override
  State<Bottomnavigator> createState() => _BottomnavigatorState();
}

class _BottomnavigatorState extends State<Bottomnavigator> {
  int selectedindex = 0;
  List pages = [Homescreen(), DetailsPage(), FavoriteScreen(), ProfileScreen()];
  void Function(int)? onTap(int index) {
    setState(() {
      selectedindex = index;
    });
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[selectedindex],
      bottomNavigationBar: SizedBox(
        height: 110,
        child: BottomNavigationBar(
          backgroundColor: Appcolors.white,
          type: BottomNavigationBarType.fixed,
          selectedLabelStyle: TextStyle(fontWeight: FontWeight.w900),
          selectedFontSize: 20,
          currentIndex: selectedindex,
          onTap: onTap,
          items: [
            BottomNavigationBarItem(
              icon: Column(
                children: [
                  Image.asset(
                    'assets/home.png',
                    color: selectedindex == 0 ? Colors.black : Appcolors.grey,
                    height: 20,
                    // width: 25,
                  ),
                  SizedBox(height: 5),
                  if (selectedindex == 0)
                    Container(
                      width: 6,
                      height: 6,
                      decoration: BoxDecoration(
                        color: Colors.red,
                        shape: BoxShape.circle,
                      ),
                    ),
                ],
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Column(
                children: [
                  Image.asset(
                    'assets/recenticon.png',
                    color: selectedindex == 1 ? Colors.black : Appcolors.grey,
                    height: 20,
                  ),
                  SizedBox(height: 5),
                  if (selectedindex == 1)
                    Container(
                      height: 6,
                      width: 6,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: selectedindex == 1 ? Colors.red : Appcolors.grey,
                      ),
                    ),
                ],
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Column(
                children: [
                  Image.asset(
                    'assets/hearttab.png',
                    color: selectedindex == 2 ? Colors.black : Appcolors.grey,
                    height: 20,
                  ),
                  SizedBox(height: 5),
                  if (selectedindex == 2)
                    Container(
                      height: 6,
                      width: 6,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.red,
                      ),
                    ),
                ],
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Column(
                children: [
                  Image.asset(
                    'assets/profiletab.png',
                    color: selectedindex == 3 ? Colors.black : Appcolors.grey,
                    height: 20,
                  ),
                  SizedBox(height: 5),
                  if (selectedindex == 3)
                    Container(
                      height: 6,
                      width: 6,
                      decoration: BoxDecoration(
                        color: Colors.red,
                        shape: BoxShape.circle,
                      ),
                    ),
                ],
              ),
              label: '',
            ),
          ],
        ),
      ),
    );
  }
}
