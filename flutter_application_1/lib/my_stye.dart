import 'package:flutter/material.dart';

class MyStyle {
  Color dakColor = Color(0xff005400);
  Color primaryColor = Color(0xff39821a);
  Color lightColor = Color(0xff6bb249);

  Widget showLogo()=>Image(
    image: AssetImage('images/menu_3.png'),
  );

  TextStyle darStyle() => TextStyle(color: dakColor);
  TextStyle whitStyle() => TextStyle(color: Colors.white);
  TextStyle pinkStyle() => TextStyle(color: Colors.pink.shade300, fontWeight: FontWeight.w700, fontSize: 17);

  SafeArea buildBackground(double screenWidth, double screenHeight) {
    return SafeArea(
      child: Container(
        width: screenWidth,
        height: screenHeight,
        child: Stack(
          children: [
            Positioned(
              top: 0,
              left: 0,
              child: Image(image: AssetImage('images/top1.png')),
            ),
            Positioned(
              top: 0,
              left: 0,
              child: Image(image: AssetImage('images/top2.png')),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              child: Image(image: AssetImage('images/bottom1.png')),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              child: Image(image: AssetImage('images/bottom2.png')),
            ),
          ],
        ),
      ),
    );
  }

  
  MyStyle();
  
}
