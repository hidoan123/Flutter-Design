import 'package:flutter/material.dart';
import 'package:uidesign/uicoffee_design/home_coffee.dart';
import 'curved_navigation_bar/home_page.dart';
import 'lottie_animation/lottie_page.dart';
void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget
{
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeCoffee(),
      theme: ThemeData(
          brightness: Brightness.dark,
          primarySwatch: Colors.orange
      ),
    );
  }

}


