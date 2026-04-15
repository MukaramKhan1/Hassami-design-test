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
          'Profiles',
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
                            return SizedBox(
                              child: AlertDialog(
                                // backgroundColor: Appcolors.grey,
                                shadowColor: Appcolors.textColor,
                                title: Text('Edit Profile'),
                                content: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    ListTile(
                                      title: Text(
                                        'Choose from gallery',
                                        style: GoogleFonts.roboto(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500,
                                          color: Appcolors.textColor,
                                        ),
                                      ),
                                      onTap: () {},
                                    ),
                                    ListTile(
                                      title: Text(
                                        'Take a Picture',
                                        style: GoogleFonts.roboto(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500,
                                          color: Appcolors.textColor,
                                        ),
                                      ),
                                      onTap: () {},
                                    ),
                                  ],
                                ),
                                actions: [
                                  TextButton(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    child: Text('close'),
                                  ),
                                ],
                              ),
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
                      onTap: () {
                        showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              title: Text('Change Email'),
                              content: Text(
                                'What are looking for? Enter email',
                              ),
                            );
                          },
                        );
                      },
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
                      onTap: () {
                        showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              title: Text('About'),
                              content: Text(
                                'This App can realy help you when you\nconfused in you trip destination',
                              ),
                            );
                          },
                        );
                      },
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
