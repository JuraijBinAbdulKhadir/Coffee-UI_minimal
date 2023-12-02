import 'package:flutter/cupertino.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:flutter/material.dart';


class Bnav extends StatelessWidget {


  void Function(int)? onTabChange;
   Bnav({super.key,required this.onTabChange});



  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(25),

      child: GNav(
        onTabChange: (value)=> onTabChange!(value),

        backgroundColor: (Colors.grey[400])! ,
        mainAxisAlignment: MainAxisAlignment.center,
        activeColor: Colors.grey[700],
        tabBackgroundColor: Colors.grey.shade300,
        tabBorderRadius: 15,
        tabActiveBorder:Border.all(color: Colors.white) ,
        tabs: [
          GButton(icon:Icons.home,text:'Shop',),
          GButton(icon:Icons.shopping_bag,text:'Cart',),
        
      ],),
    );
  }
}
