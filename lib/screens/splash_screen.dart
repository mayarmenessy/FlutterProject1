import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter2/screens/programer_list.dart';
import 'package:page_transition/page_transition.dart';
class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
        splashIconSize: 500,
        splashTransition: SplashTransition.rotationTransition,
        pageTransitionType: PageTransitionType.leftToRight,
        backgroundColor: Colors.blueAccent,
        splash: Column(
        mainAxisAlignment:MainAxisAlignment.center,
        children:[
        const CircleAvatar(
      radius: 200,
      backgroundImage: AssetImage('assets/12.jpg'),

        ),
        const SizedBox(height: 20),
        const Text('Welcome', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold,
        color: Colors.white ,),
        ),
        ],
        ),
        nextScreen: const ProgramerList());

  }

}
