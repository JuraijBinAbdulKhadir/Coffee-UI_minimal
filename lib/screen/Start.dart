import 'package:flutter/material.dart';
import 'package:koff/screen/myBnav.dart';

import 'Cartpage.dart';
import 'Shoppage.dart';





class home1 extends StatefulWidget {
  const home1({super.key});

  @override
  State<home1> createState() => _home1State();
}

class _home1State extends State<home1> {


  //Navigate Bottom Bar
  int _select=0;
  void NavigateBottomBar(int index){setState(() {
    _select=index;
  });}

  //pages
  final List<Widget> _pages=[Shoppage(),Cartpage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      bottomNavigationBar: Bnav(
          onTabChange:(index) =>NavigateBottomBar(index) , ),
      body: _pages[_select],
    );
  }
}



