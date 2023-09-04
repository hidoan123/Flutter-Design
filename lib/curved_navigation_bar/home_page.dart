import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
class HomePage extends StatefulWidget
{
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}
class _HomePageState extends State<HomePage>{
  int _currentIndex = 0;

  List<Widget> _screens = [
    HomeScreen(),
    FavoriteScreen(),
    SettingScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: _screens[_currentIndex],
      bottomNavigationBar: CurvedNavigationBar(
        animationDuration: Duration(milliseconds: 250),
        backgroundColor: Colors.deepPurple,
        color: Colors.deepPurple.shade200,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          Icon(Icons.home),
          Icon(Icons.favorite),
          Icon(Icons.settings)
        ],
      ),

    );
  }
}
class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.deepPurple,
      child: Center(
        child: Text('Home Screen'),
      ),
    );
  }
}

class FavoriteScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.deepPurpleAccent.shade100,
      child: Center(
        child: Text('Favorite Screen'),
      ),
    );
  }
}

class SettingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.deepPurpleAccent.shade200,
      child: Center(
        child: Text('Setting Screen'),
      ),
    );
  }
}