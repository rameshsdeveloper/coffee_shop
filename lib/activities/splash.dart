import 'dart:async';

import 'package:coffee_shop/activities/home.dart';
import 'package:flutter/material.dart';

class Splash extends StatefulWidget
{
  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    animator();
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomePage(),));
    });
  }
  double width=0;
  double height=0;
  void animator()
  {
    setState(() {
      width=250;
      height=250;
    });
  }
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     body: Container(
       height: double.infinity,
       width: double.infinity,
       color: Colors.black,
       child: AnimatedContainer(
         duration: Duration(seconds: 2),
         height: height,
         width: width,
         child: Image( image: AssetImage('assets/images/p4.jpg'),

         ),
       ),
     ),
   );
  }
}