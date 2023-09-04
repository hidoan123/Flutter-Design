import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:lottie/lottie.dart';
import 'package:uidesign/curved_navigation_bar/home_page.dart';
class AnimationPage extends StatefulWidget
{
  const AnimationPage({super.key});

  @override
  State<AnimationPage> createState() => _AnimationState();

}

class _AnimationState extends State<AnimationPage> with SingleTickerProviderStateMixin{
  @override
  void initState() {
   super.initState();
   SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
   Future.delayed(const Duration(seconds: 2), (){
     Navigator.of(context).pushReplacement(
       MaterialPageRoute(builder: (_) => const HomePage(),)
     );
   });
  }
  @override
  void dispose() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: SystemUiOverlay.values);
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Center(
        child: Lottie.asset('assets/animations/animation_lkal2xl4.json'),
      ),
    );
  }
}