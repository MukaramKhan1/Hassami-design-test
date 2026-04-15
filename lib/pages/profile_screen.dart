import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mukaram_sir_task/utils/appColors.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Profile',
          style: GoogleFonts.lobster(fontWeight: FontWeight.w500, fontSize: 40),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
          child: Column(
            children: [
              Stack(
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage('assets/profilescreen.jpg'),
                    radius: 80,
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: InkWell(
                      onTap: () {
                        showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              shadowColor: Colors.black54,
                              title: Text('Change Photo'),
                              content: SizedBox(
                                height: 113,
                                width: 200,
                                child: Column(
                                  children: [
                                    ListTile(
                                      title: Text('Select Photo'),
                                      onTap: () {},
                                    ),
                                    ListTile(
                                      title: Text('Take Photo'),
                                      onTap: () {},
                                    ),
                                  ],
                                ),
                              ),
                              actions: [
                                TextButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  child: Text('Close'),
                                ),
                              ],
                            );
                          },
                        );
                      },
                      child: Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          color: Appcolors.grey,
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: Icon(Icons.edit, color: Appcolors.white),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Text(
                'David Warner',
                style: GoogleFonts.lobster(
                  fontWeight: FontWeight.w500,
                  fontSize: 35,
                ),
              ),
              SizedBox(
                width: 290,
                child: Divider(thickness: 1, color: Appcolors.grey),
              ),
              SizedBox(height: 50),
              Expanded(
                child: ListView(
                  scrollDirection: Axis.vertical,
                  children: [
                    ListTile(
                      onTap: () {},
                      leading: Icon(
                        Icons.email_outlined,
                        color: Appcolors.grey,
                      ),
                      title: Text('david@gmail.com'),
                    ),
                    SizedBox(
                      width: 290,
                      child: Divider(thickness: 1, color: Appcolors.grey),
                    ),
                    ListTile(
                      onTap: () {},
                      leading: Icon(Icons.settings, color: Appcolors.grey),
                      title: Text('Setting'),
                    ),
                    SizedBox(
                      width: 100,
                      child: Divider(thickness: 1, color: Appcolors.grey),
                    ),
                    ListTile(
                      onTap: () {},
                      leading: Icon(Icons.info, color: Appcolors.grey),
                      title: Text('About'),
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
