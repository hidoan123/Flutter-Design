import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'coffee_tile.dart';
import 'coffee_type.dart';
class HomeCoffee extends StatefulWidget
{
  const HomeCoffee({super.key});

  @override
  State<HomeCoffee> createState() => _HomeCoffeeState();
}

class _HomeCoffeeState extends State<HomeCoffee>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: const Icon(Icons.menu),
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(Icons.person),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: ''
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              label: ''
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.notifications),
              label: ''
          )
        ],),
      body: Column(
        children: [
          //find the best coffee
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Text('Find the best coffee for you',
            style: GoogleFonts.bebasNeue(
              fontSize: 36,),
            ),
          ),
          const SizedBox(height: 9,),
          //search the coffee
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: TextField(
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.search),
                hintText: 'find the coffee..',
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey.shade600),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey.shade600),
                ),
              ),
            ),
          ),
           const SizedBox(height: 9,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: Container(
              height: 40,
              color: Colors.grey[900],
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  CoffeeType(coffeeType: 'Coffee'),
                  CoffeeType(coffeeType: 'Cocktail'),
                  CoffeeType(coffeeType: 'Juice'),
                  CoffeeType(coffeeType: 'Liqueur'),
                ],
              ),
            ),
          ),
          //listview horizontal of coffee
          Expanded(
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  CoffeeTile(),
                ],
              ),
          )
        ],
      ),
    );
  }


}