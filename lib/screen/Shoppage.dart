import 'package:flutter/material.dart';
import 'package:koff/model/kofishopmodel.dart';
import 'package:koff/screen/CoffeeTile.dart';
import 'package:provider/provider.dart';

import '../model/kofimodel.dart';

class Shoppage extends StatefulWidget {
  const Shoppage({super.key});

  @override
  State<Shoppage> createState() => _ShoppageState();
}

class _ShoppageState extends State<Shoppage> {

  void addCart(Coffee coffee){
    Provider.of<CoffeeShop>(context,listen:false ).addItem(coffee);
    showDialog(context: context, builder: (context) => AlertDialog(
                                 title: Text("Successfully Added to Cart"),
                                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50))),);

  }

  @override
  Widget build(BuildContext context) {
    return Consumer<CoffeeShop>(
        builder:(context, value, child)=>

          SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(25),
              child: Column(

                children: [
                  Text("Select Coffee:",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold)),
                  SizedBox(height: 25,),
                  Expanded(child: ListView.builder(
                      itemCount: value.coffeeShop.length ,
                      itemBuilder: (context,index){
                      Coffee eachCoffee=value.coffeeShop[index];
                      return CoffeeTile(
                          ico: Icon(Icons.add_box),
                          coffee:eachCoffee,
                          onPressed:()=>addCart(eachCoffee) ,);
                  }))
                ],
              ),
            ),
          )

         );
  }
}
