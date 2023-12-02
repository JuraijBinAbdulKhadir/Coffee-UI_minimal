import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:koff/model/kofimodel.dart';

class CoffeeTile extends StatelessWidget {


  final Coffee coffee;
  void Function()? onPressed;
  final Widget ico;


   CoffeeTile({super.key,required this.coffee,this.onPressed,required this.ico});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(12)
      ),
      margin: EdgeInsets.only(bottom: 10),
      padding: EdgeInsets.symmetric(vertical: 25,horizontal: 10),
      child: ListTile(
        title: Text(coffee.name),
        subtitle: Text(coffee.price),
        leading: Image.asset(coffee.img),
        trailing: IconButton(
                   icon:ico,
                   onPressed: onPressed,),
      ),
    );
  }
}
