import 'package:flutter/material.dart';
class CoffeeType extends StatelessWidget
{
  String coffeeType;

  CoffeeType({super.key, required this.coffeeType});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
     return Container(
         padding: const EdgeInsets.all(10),
         child: Text('${coffeeType}',style: const TextStyle(fontSize: 18,color: Colors.grey),)
     );
  }

}