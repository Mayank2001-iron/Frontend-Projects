import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var ele = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              // color: Colors.amber,
              child: Stack(

                  //Stack

                  children: [
                    CustomWaterBackground(),
                    Container(
                      // padding: EdgeInsets.all(8),
                      height: MediaQuery.of(context).size.height,
                      width: MediaQuery.of(context).size.width,
                      child: Column(
                        children: [
                          //AppBar
                          Container(
                            height: MediaQuery.of(context).size.height * 0.18,
                            width: MediaQuery.of(context).size.width,
                            // color: Colors.amber,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CustomAppBar(),
                                Gap(10),
                              ],
                            ),
                          ),
                          CustomBody(),
                        ],
                      ),
                    )
                    // Stack
                  ]),
            ),
            Container(
              // alignment: A,
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              color: Colors.red,
            ),
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              color: Colors.green,
            ),
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              color: Colors.blue,
            ),
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              color: Colors.purple,
            ),
          ],
        ),
      ),
    );
  }
}

class CustomAppBar extends StatefulWidget {
  CustomAppBar({super.key});

  @override
  State<CustomAppBar> createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
  var ele = true;

  var CustomFontstyle = GoogleFonts.tiltNeon(
    fontSize: 17,
    color: Colors.white,
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: MediaQuery.of(context).size.height * 0.2,
      child: Row(
        // mainAxisAlignment: MainAxisAlignment.center,
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Gap(20),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.menu,
              color: Colors.white,
              size: 35,
            ),
          ),
          Spacer(),
          Text(
            'HOME',
            style: CustomFontstyle,
          ),
          Gap(20),
          Text(
            'ABOUT',
            style: CustomFontstyle,
          ),
          Gap(20),
          Text(
            'SEARCH',
            style: CustomFontstyle,
          ),
          Gap(20),
          Text(
            'CONTACT',
            style: CustomFontstyle,
          ),
          Gap(20),
          // Switch(
          //     value: ele,
          //     onChanged: (value) {
          //       setState(() {
          //         ele = value;
          //       });
          //     }),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              border: Border.all(width: 2,color: Colors.teal),
            ),
            child: Row(
              children: [
                Container(
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: Colors.teal,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Text('SIGN UP',style: CustomFontstyle,)),
                Gap(5),
                Text('LOG IN',style: CustomFontstyle,),
                Gap(10),
              ],
          
            ),
          ),
          Gap(40),
        ],
        //AppBar
      ),
    );
  }
}

class CustomWaterBackground extends StatelessWidget {
  const CustomWaterBackground({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/water2.jpg'),
              fit: BoxFit.cover,
            ),
          ),
        ),

        //Black Tint

        Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            color: Colors.black.withOpacity(0.5),
          ),
        ),

        Container(
          // color: Colors.green,
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Center(
            child: Container(
              // color: Colors.amber,
              height: 400,
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  // Gap(90),
                  Container(
                    // color: Colors.purple,
                    child: Text(
                      'WATER',
                      style: GoogleFonts.openSans(
                          fontWeight: FontWeight.w900,
                          fontSize: 160,
                          color: Colors.white70),
                    ),
                  ),
                  Container(
                    // color: Colors.pink,
                    child: Text(
                      'SPACE',
                      style: GoogleFonts.quicksand(
                        // fontWeight: FontWeight.,
                        // decorationThickness: 0.0,
                        fontSize: 119,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class CustomBody extends StatelessWidget {
  CustomBody({super.key});
  var CustomFontstyle = GoogleFonts.tiltNeon(
    fontSize: 17,
    color: Colors.white,
  );

  @override
  Widget build(BuildContext context) {
    return Container(
        // padding: EdgeInsets.all(5),
        child: Row(
      children: [
        Expanded(
          flex: 1,
          child: Container(
            width: MediaQuery.of(context).size.width,
            // color: Colors.green,
            child: Column(
              children: [
                Gap(30),
                RotatedBox(
                    quarterTurns: 3,
                    child: Text(
                      'Instagram',
                      style: CustomFontstyle,
                    )),
                Gap(70),
                RotatedBox(
                    quarterTurns: 3,
                    child: Text(
                      'Twitter',
                      style: CustomFontstyle,
                    )),
                Gap(70),
                RotatedBox(
                    quarterTurns: 3,
                    child: Text(
                      'Facebook',
                      style: CustomFontstyle,
                    )),
                Gap(70),
                // Text('Instagram'),
                // Gap(30),
              ],
            ),
          ),
        ),
        Expanded(
          flex: 13,
          child: Align(
            // alignment: Alignment(x, y),
            child: Container(
              padding: EdgeInsets.all(5),
              // decoration: BoxDecoration(
              //     borderRadius: BorderRadius.circular(20),
              //     border: Border.all(width: 1.5, color: Colors.white)),
              // child: Text(
              //   'EXPLORE',
              //   style: GoogleFonts.tiltNeon(color: Colors.white, fontSize: 20),
              // ),
            ),
          ),
        ),
      ],
    ));
  }
}
