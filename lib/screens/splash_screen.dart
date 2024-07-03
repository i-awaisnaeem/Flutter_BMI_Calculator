import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_bmi_calculator/screens/input_page.dart';
import 'package:flutter_bmi_calculator/screens/login_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    next();
  }

  void next() async{
    Timer(const Duration(seconds: 4), () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => LoginScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Stack(
        children: [Image(
          height: double.infinity,
          fit: BoxFit.fitHeight,
          image: NetworkImage('https://images.pexels.com/photos/2803158/pexels-photo-2803158.jpeg?auto=compress&cs=tinysrgb&w=600'),),
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(Icons.health_and_safety_outlined,
          size: 200,
          color: Color(0xffFE0808),),
        SizedBox(height: 30,),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 45),
          child: Text('Your Health Matters',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 35,

          ),),
        ),
          SizedBox(height: 320,),
          Text('Developed by: Muhammad Awais (BSCS-6th-E)',
          style: TextStyle(
            fontSize: 15
          ),)
      ],)
      ]),
      
    );
  }
}