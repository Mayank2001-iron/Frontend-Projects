import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

class ModernApartments extends StatelessWidget {
  ModernApartments({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            color: Colors.amber,
            child: Stack(
              children: [
                CustomBuildingBackground(),
                Column(
                  children: [
                    CustomBuildingAppBar(),
                    Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: Align(
                            heightFactor: 12.4,
                            alignment: Alignment.bottomCenter,
                            child: InkWell(
                              child: Container(
                                height: 40,
                                width: 40,
                                decoration: BoxDecoration(
                                  color: Colors.grey[800],
                                  shape: BoxShape.circle,
                                  boxShadow: [BoxShadow(blurRadius: 60,color: Colors.black),],
                                ),
                                child: Icon(Icons.arrow_drop_down,color: Colors.white,),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                            flex: 5,
                            child: Container(
                              // color: Colors.blue,
                              padding: EdgeInsets.all(8),
                              child: Column(
                                // mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Modern\naparments',
                                    style: GoogleFonts.playfairDisplay(
                                        color: Colors.white,
                                        fontSize: 70,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  Gap(20),
                                  Text(
                                    'New home furniture\ncollections and decorations\naccessories',
                                    style: GoogleFonts.tiltNeon(
                                      fontSize: 15,
                                        color: Colors.white),
                                  ),
                                  Align(
                                    heightFactor:4,
                                    widthFactor: 1,
                                    child: InkWell(
                                      child: Container(
                                        padding: EdgeInsets.all(8),
                                        width: 112,
                                        decoration: BoxDecoration(
                                          color: Colors.grey[800],
                                          shape: BoxShape.rectangle,
                                          borderRadius: BorderRadius.circular(5),
                                          boxShadow: [BoxShadow(blurRadius: 60,color: Colors.black)],
                                        ),
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          // crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text('See more',
                                            style: GoogleFonts.tiltNeon(color: Colors.white),),
                                            Gap(10),
                                            Icon(Icons.arrow_right_alt_sharp,color: Colors.white,)
                                          ],
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            )),
                        Expanded(
                            flex: 5,
                            child: Container(
                              // color: Colors.red,
                              padding: EdgeInsets.all(8),
                            )),
                      ],
                    )
                    // Container(
                    //   height: 40,
                    //   width: 40,
                    //   decoration: BoxDecoration(
                    //     color: Colors.amber,
                    //     shape: BoxShape.circle,
                    //   ),
                    // ),
                  ],
                ),
              ],
            )));
  }
}

class CustomBuildingAppBar extends StatelessWidget {
  CustomBuildingAppBar({super.key});
  var CustomAppBarFontStyle = GoogleFonts.playfairDisplay(
      fontSize: 12, color: Colors.white, fontWeight: FontWeight.w500);

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.green,
      padding: EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Gap(20),
          Text(
            'me.',
            style: GoogleFonts.openSans(
                fontSize: 30, color: Colors.white, fontWeight: FontWeight.w900),
          ),
          Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                'ABOUT',
                style: CustomAppBarFontStyle,
              ),
              Gap(50),
              Text(
                'PRODUCTS',
                style: CustomAppBarFontStyle,
              ),
              Gap(50),
              Text(
                'CONTACT',
                style: CustomAppBarFontStyle,
              ),
              Gap(50),
              Icon(
                Icons.menu,
                color: Colors.white,
              ),
              Gap(40),
            ],
          )
        ],
      ),
    );
  }
}

class CustomBuildingBackground extends StatelessWidget {
  CustomBuildingBackground({super.key});
  var CustomFontstyle =
      GoogleFonts.playfairDisplay(fontSize: 40, color: Colors.white);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green,
      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: Container(
              color: Colors.grey[850],
            ),
          ),
          Expanded(
            flex: 1,
            child: Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                      // color: Colors.green,
                      image: DecorationImage(
                          image: AssetImage('assets/images/kitchen.jpg'),
                          fit: BoxFit.fitHeight)),
                ),
                Container(
                  color: Colors.black26,
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: SizedBox(
                    height: 200,
                    width: 200,
                    child: Container(
                      // color: Colors.red,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '01',
                            style: GoogleFonts.playfairDisplay(
                              fontSize: 20,
                              color: Colors.white,
                            ),
                          ),
                          Gap(20),
                          Text(
                            'Bacchus\nkitchen',
                            style: CustomFontstyle,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: Stack(
              children: [
                Container(
                  // color: Colors.orange,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/images/doors.jpg'),
                          fit: BoxFit.fitHeight)),
                ),
                Container(
                  color: Colors.black26,
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: SizedBox(
                    height: 200,
                    width: 200,
                    child: Container(
                      // color: Colors.red,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '02',
                            style: GoogleFonts.playfairDisplay(
                              fontSize: 20,
                              color: Colors.white,
                            ),
                          ),
                          Gap(20),
                          Text(
                            'Tellus\ndoors',
                            style: CustomFontstyle,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: Stack(
              children: [
                Container(
                  // color: Colors.blue,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/images/windows.jpg'),
                          fit: BoxFit.fitHeight)),
                ),
                Container(
                  color: Colors.black26,
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: SizedBox(
                    height: 200,
                    width: 200,
                    child: Container(
                      // color: Colors.red,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '03',
                            style: GoogleFonts.playfairDisplay(
                              fontSize: 20,
                              color: Colors.white,
                            ),
                          ),
                          Gap(20),
                          Text(
                            'Helios\nwindows',
                            style: CustomFontstyle,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
