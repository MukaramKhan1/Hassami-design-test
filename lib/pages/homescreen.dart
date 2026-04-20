import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mukaram_sir_task/pages/profile_screen.dart';
import 'package:mukaram_sir_task/utils/appColors.dart';
import 'package:mukaram_sir_task/widgets/containertabs.dart';
import 'package:mukaram_sir_task/widgets/searchbar.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

// List<Map<String, String>> favoritelist = [];

ValueNotifier<List<MyModel>> favouriteListNew = ValueNotifier([]);

// ye model class hai jo hamary app ki required data ko rakta hai
class MyModel {
  String title;
  String location;
  String rating;
  String image;
  bool isFavorite;

  MyModel({
    required this.title,
    required this.location,
    required this.rating,
    required this.image,
    required this.isFavorite,
  });
}

// yaha say model class ka data retrive huta hai
List<MyModel> isfavoritelists = [
  MyModel(
    title: "Mount fuji, Tokyo",
    location: "Tokyo, Japan",
    rating: "4.8",
    image: "assets/viewImage01.png",
    isFavorite: false,
  ),
  MyModel(
    title: "Andes, America",
    location: "South America",
    rating: "4.5",
    image: "assets/viewImage02.png",
    isFavorite: false,
  ),
];

ValueNotifier<List<Map<String, String>>> favoriteNotifier = ValueNotifier([]);

class _HomescreenState extends State<Homescreen> {
  //ye by default select nh hoga
  bool isfav1 = false;
  bool isfav2 = false;

  //ye empty list hai jisme hum favorite place ka data store karenge
  //yeaha say data gayga favoritelist main aur waha say data aayega favorite screen main
  // void toggleFavorite(int index) {
  //   setState(() {
  //     if (index == 0) {
  //       isfav1 = !isfav1;
  //       if (isfav1) {
  //         favoritelist.add({
  //           'title': "Mount fuji,Tokyo",
  //           'location': "Tokyo,Japan",
  //           'rating': "4.8",
  //           'image': "assets/viewImage01.png",
  //         });
  //       } else {
  //         favoritelist.removeWhere(
  //           (item) => item['title'] == 'Mount fuji, Tokyo',
  //         );
  //       }
  //       if (index == 1) {
  //         isfav2 = !isfav2;
  //         if (isfav2) {
  //           favoritelist.add({
  //             'title': "Andes,America",
  //             'Location': "South America",
  //             'rating': "4.5",
  //             'image': "assets/viewImage02.png",
  //           });
  //         } else {
  //           favoritelist.removeWhere(
  //             (item) => item['title'] == 'Andes, America',
  //           );
  //         }
  //       }
  //     }
  //   });
  // }
  void toggleFavorite(int index) {
    setState(() {
      isfavoritelists[index].isFavorite = !isfavoritelists[index].isFavorite;

      if (isfavoritelists[index].isFavorite) {
        favouriteListNew.value.add(isfavoritelists[index]);
        // notifyListners();

        // favoritelist.add({
        //   'title': isfavoritelists[index].title,
        //   'location': isfavoritelists[index].location,
        //   'rating': isfavoritelists[index].rating,
        //   'image': isfavoritelists[index].image,
        // });
      } else {
        // favoritelist.removeWhere(
        //   (item) => item['title'] == isfavoritelists[index].title,
        // );
      }
    });
  }

  //s terah nh karna hai q k siraf tap huta hai first tab disselecte nh huta
  // bool isslected = false;
  // bool isclicked = false;
  // bool istouched = false;
  // s say index wise tab select huta do tab ek sat nh huta
  int selectedtab = 0;
  List tabs = ['Most Viewd', 'Nearby', 'latest'];

  @override
  Widget build(BuildContext context) {
    // media query build k andar use huti hai
    // final h = MediaQuery.sizeOf(context).height;
    // final w = MediaQuery.sizeOf(context).width;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        toolbarHeight: 85,
        backgroundColor: Appcolors.white,
        flexibleSpace: SafeArea(
          child: Column(
            children: [
              Row(
                children: [
                  SizedBox(width: 15),
                  Text(
                    'Hi, David',
                    style: GoogleFonts.montserrat(
                      color: Appcolors.textColor,
                      fontWeight: FontWeight.w600,
                      fontSize: 30,
                      fontStyle: FontStyle.normal,
                    ),
                  ),
                  Text(
                    ' 👋',
                    style: GoogleFonts.montserrat(
                      color: Appcolors.textColor,
                      fontWeight: FontWeight.w500,
                      fontSize: 25,
                      fontStyle: FontStyle.normal,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Text(
                      'Explor the world',
                      style: GoogleFonts.inter(
                        color: Appcolors.lighttext,
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        actions: [
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ProfileScreen()),
              );
            },
            child: CircleAvatar(
              backgroundImage: AssetImage('assets/profileimage.png'),
            ),
          ),
          SizedBox(width: 20),
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                children: [
                  SizedBox(height: 30),
                  CustomeSearchbar(),
                  SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Popular places',
                        style: GoogleFonts.poppins(
                          color: Appcolors.textColor,
                          fontWeight: FontWeight.w600,
                          fontSize: 20,
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          // Navigator.push(
                          //   context,
                          //   MaterialPageRoute(
                          //     builder: (context) => DetailsPage(),
                          //   ),
                          // );
                        },
                        child: Text(
                          'View all',
                          style: TextStyle(color: Appcolors.lighttext),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 30),
                ],
              ),
            ),
            SingleChildScrollView(
              padding: EdgeInsets.symmetric(horizontal: 15),
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  InkWell(
                    onTap: () {
                      setState(() {
                        // isslected = !isslected;
                        selectedtab = 0;
                      });
                    },
                    child: Tabs(
                      color: selectedtab == 0
                          ? Appcolors.contColor
                          : Appcolors.disSlectTab,
                      child: Center(
                        child: Text(
                          'Most Viewd',
                          style: GoogleFonts.roboto(
                            fontWeight: FontWeight.w500,
                            fontSize: selectedtab == 0 ? 16 : 13,
                            color: selectedtab == 0
                                ? Appcolors.white
                                : Appcolors.grey,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 30),

                  InkWell(
                    onTap: () {
                      setState(() {
                        // isclicked = !isclicked;
                        selectedtab = 1;
                      });
                    },
                    child: Tabs(
                      color: selectedtab == 1
                          ? Appcolors.contColor
                          : Appcolors.disSlectTab,
                      child: Center(
                        child: Text(
                          'Nearby',
                          style: GoogleFonts.roboto(
                            color: selectedtab == 1
                                ? Appcolors.white
                                : Appcolors.grey,
                            fontWeight: FontWeight.w500,
                            fontSize: selectedtab == 1 ? 16 : 13,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 30),
                  InkWell(
                    onTap: () {
                      setState(() {
                        // istouched = !istouched;
                        selectedtab = 2;
                      });
                    },
                    child: Tabs(
                      color: selectedtab == 2
                          ? Appcolors.contColor
                          : Appcolors.disSlectTab,
                      child: Center(
                        child: Text(
                          'latest',
                          style: GoogleFonts.roboto(
                            color: selectedtab == 2
                                ? Appcolors.white
                                : Appcolors.grey,
                            fontWeight: FontWeight.w500,
                            fontSize: selectedtab == 2 ? 16 : 13,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 30),
                ],
              ),
            ),
            SizedBox(height: 20),
            Expanded(
              child: selectedtab == 0
                  ? ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: isfavoritelists.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 15,
                            vertical: 15,
                          ),
                          child: Container(
                            width: 270,
                            height: 320,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey,
                                  blurRadius: 5,
                                  spreadRadius: 0,
                                  offset: Offset(0, 10),
                                ),
                              ],
                              image: DecorationImage(
                                image: AssetImage(isfavoritelists[index].image),
                                fit: BoxFit.fill,
                              ),
                            ),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 10,
                                    vertical: 10,
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Container(
                                        height: 50,
                                        width: 50,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(
                                            50,
                                          ),
                                          color: const Color.fromARGB(
                                            150,
                                            87,
                                            83,
                                            83,
                                          ),
                                        ),
                                        child: InkWell(
                                          onTap: () {
                                            toggleFavorite(index);
                                          },
                                          child:
                                              isfavoritelists[index].isFavorite
                                              ? Icon(
                                                  Icons.favorite,
                                                  color:
                                                      isfavoritelists[index]
                                                          .isFavorite
                                                      ? Colors.red
                                                      : Appcolors.white,
                                                )
                                              : Image.asset(
                                                  'assets/heartIcon.png',
                                                  width: 35,
                                                  height: 35,
                                                ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(height: 150),
                                Container(
                                  height: 100,
                                  width: 250,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: const Color.fromARGB(
                                      150,
                                      87,
                                      83,
                                      83,
                                    ),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 15,
                                      vertical: 10,
                                    ),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          isfavoritelists[index].title,
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Appcolors.white,
                                          ),
                                        ),
                                        SizedBox(height: 20),
                                        Row(
                                          children: [
                                            Image.asset(
                                              'assets/locationicon.png',
                                            ),
                                            SizedBox(width: 10),
                                            Text(
                                              isfavoritelists[index].location,
                                              style: TextStyle(
                                                color: Appcolors.white,
                                              ),
                                            ),
                                            SizedBox(width: 50),
                                            Image.asset(
                                              'assets/starIcon.png',
                                              color: Appcolors.white,
                                            ),
                                            SizedBox(width: 5),
                                            Text(
                                              isfavoritelists[index].rating,
                                              style: TextStyle(
                                                color: Appcolors.white,
                                                fontSize: 17,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                        //  Stack(
                        //   children: [
                        //     InkWell(
                        //       onTap: () {
                        //         Navigator.push(
                        //           context,
                        //           MaterialPageRoute(
                        //             builder: (context) => DetailsPage(),
                        //           ),
                        //         );
                        //       },
                        //       child: Container(
                        //         height: 340,
                        //         width: 270,
                        //         decoration: BoxDecoration(
                        //           borderRadius: BorderRadius.circular(20),
                        // boxShadow: [
                        //   BoxShadow(
                        //     color: Colors.grey,
                        //     blurRadius: 5,
                        //     spreadRadius: 0,
                        //     offset: Offset(0, 8),
                        //   ),
                        // ],
                        //           image: DecorationImage(
                        //             image: AssetImage('assets/viewImage01.png'),
                        //             fit: BoxFit.fill,
                        //           ),
                        //         ),
                        //       ),
                        //     ),
                        //     Positioned(
                        //       right: 20,
                        //       top: 10,
                        //       child: InkWell(
                        //         onTap: () {
                        //           toggleFavorite(0);
                        //         },
                        //         child: Container(
                        //           height: 40,
                        //           width: 40,
                        //           decoration: BoxDecoration(
                        //             color: const Color.fromARGB(196, 82, 81, 81),
                        //             borderRadius: BorderRadius.circular(50),
                        //           ),
                        //           child: isfav1
                        //               ? Icon(
                        //                   Icons.favorite_rounded,
                        //                   color: isfav1
                        //                       ? Colors.red
                        //                       : Appcolors.white,
                        //                 )
                        //               : Image.asset(
                        //                   'assets/heartIcon.png',
                        //                   color: Appcolors.white,
                        //                 ),
                        //         ),
                        //       ),
                        //     ),
                        //     Positioned(
                        //       bottom: 30,
                        //       left: 20,
                        //       right: 20,
                        //       child: Container(
                        //         height: 80,
                        //         width: 160,
                        //         decoration: BoxDecoration(
                        //           color: const Color.fromARGB(196, 82, 81, 81),
                        //           borderRadius: BorderRadius.circular(20),
                        //         ),
                        //         child: Padding(
                        //           padding: const EdgeInsets.all(8.0),
                        //           child: Column(
                        //             crossAxisAlignment: CrossAxisAlignment.start,
                        //             children: [
                        //               RichText(
                        //                 text: TextSpan(
                        //                   children: [
                        //                     TextSpan(
                        //                       text: 'Mount fujii,',
                        // style: TextStyle(
                        //   fontWeight: FontWeight.bold,
                        // ),
                        //                     ),
                        //                     TextSpan(
                        //                       text: ' Tokyo',
                        //                       style: TextStyle(
                        //                         color: const Color.fromARGB(
                        //                           255,
                        //                           212,
                        //                           207,
                        //                           207,
                        //                         ),
                        //                       ),
                        //                     ),
                        //                   ],
                        //                 ),
                        //               ),
                        //               SizedBox(height: 10),
                        //               Row(
                        //                 children: [
                        //                   Icon(
                        //                     Icons.location_on_outlined,
                        //                     color: const Color.fromARGB(
                        //                       255,
                        //                       212,
                        //                       207,
                        //                       207,
                        //                     ),
                        //                   ),
                        //                   Text(
                        //                     'Tokyo,japan',
                        //                     style: TextStyle(
                        //                       color: const Color.fromARGB(
                        //                         255,
                        //                         212,
                        //                         207,
                        //                         207,
                        //                       ),
                        //                     ),
                        //                   ),
                        //                   SizedBox(width: 30),
                        //                   Icon(
                        //                     Icons.star_border,
                        //                     color: const Color.fromARGB(
                        //                       255,
                        //                       212,
                        //                       207,
                        //                       207,
                        //                     ),
                        //                   ),
                        //                   SizedBox(width: 5),
                        //                   Text(
                        //                     '4.8',
                        //                     style: TextStyle(
                        //                       color: const Color.fromARGB(
                        //                         255,
                        //                         212,
                        //                         207,
                        //                         207,
                        //                       ),
                        //                       fontSize: 17,
                        //                     ),
                        //                   ),
                        //                 ],
                        //               ),
                        //             ],
                        //           ),
                        //         ),
                        //       ),
                        //     ),
                        //   ],
                        // );
                      },
                    )
                  : Text('We will be updated soon'),
            ),
          ],
        ),
      ),
    );
  }
}
