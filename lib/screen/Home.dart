import 'package:flutter/material.dart';
import 'package:koff/screen/Start.dart';
import 'package:lottie/lottie.dart';
import 'dart:core';

import 'package:rive/rive.dart';
class Homey extends StatelessWidget {
  const Homey({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.brown,title: Center(child: Text('COFFEE SHOP',style: TextStyle(fontSize: 30,color: Colors.white,fontWeight: FontWeight.bold),))),
      body:Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [

            Container(
              color: Colors.brown[200],
                height: 600,
                width: double.infinity,
                child: Lottie.asset('Assets/2.json')),
            ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.brown,),
                onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=> home1()));},
                child: Text('Get Started',style: TextStyle(fontWeight: FontWeight.w800,color: Colors.white),))
          ],
        ),
      ) ,
    );
  }
}
