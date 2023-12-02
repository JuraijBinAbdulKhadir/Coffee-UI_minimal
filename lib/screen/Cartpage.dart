import 'package:flutter/material.dart';
import 'package:koff/model/kofishopmodel.dart';
import 'package:koff/screen/CoffeeTile.dart';
import 'package:provider/provider.dart';

import '../model/kofimodel.dart';

class Cartpage extends StatefulWidget {
  const Cartpage({super.key});

  @override
  State<Cartpage> createState() => _CartpageState();
}

class _CartpageState extends State<Cartpage> {

  void remCart(Coffee coffee){
    Provider.of<CoffeeShop>(context,listen: false).remItem(coffee);
  }


  @override
  Widget build(BuildContext context) {
    return Consumer<CoffeeShop>(
        builder: (context, value, child) => SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(25),
            child: Column(
              children: [
              Text("YOUR CART:",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
            Expanded(child: ListView.builder(
                itemCount: value.usrCart.length,
                itemBuilder:(context, index){
                  Coffee eachCoffee=value.usrCart[index];
                  return CoffeeTile(onPressed: ()=>remCart(eachCoffee),coffee: eachCoffee, ico:Icon(Icons.delete,));

                }))

              ],
            ),
          ),
        ),);
  }


}
