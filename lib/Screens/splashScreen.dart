import 'package:daw_a/Screens/loginScreen.dart';
import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';

class SplashScreen extends StatefulWidget {
  static const routeName = '/splashScreen';
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final Height = size.height -
        AppBar().preferredSize.height -
        MediaQuery.of(context).padding.top -
        MediaQuery.of(context).padding.bottom;
    final Width = size.width;
    return Container(
      decoration: new BoxDecoration(
        gradient: new LinearGradient(
          colors: [
            Color.fromARGB(255, 103, 128, 253),
            Color.fromARGB(255, 129, 171, 240),
            Color.fromARGB(255, 145, 179, 207),
            Color.fromARGB(231, 175, 212, 242),
            Color.fromARGB(255, 196, 229, 255),
            Color.fromARGB(255, 223, 253, 255),
            Color.fromARGB(255, 229, 249, 255),
            // Theme.of(context).backgroundColor,
          ],
          begin: const FractionalOffset(0.0, 0.0),
          end: const FractionalOffset(1.0, 0.0),
          stops: [0.0, 0.2, 0.4, 0.6, 0.8, 0.9, 1.0],
          // stops: [0.0],
          //titleMode --> clamp means that the gradient will not be repeated
          tileMode: TileMode.clamp,
        ),
      ),
      child: AnimatedOpacity(
        opacity: 1.0,
        duration: Duration(seconds: 1),
        child: Center(
          child: AnimatedSplashScreen(
            splash: Container(
              height: Height * 0.35,
              width: Width * 0.35,
              child: Center(
                child: Container(
                  margin: EdgeInsets.only(
                    left: Width * 0.05,
                  ),
                  child: ClipOval(
                    // moving the pic to left
                    child: Image.asset('assets/Images/Picture1.png',
                        fit: BoxFit.cover),
                    // child: Text(
                    //   "DAW",
                    //   style: TextStyle(
                    //     color: Theme.of(context).backgroundColor,
                    //   ),
                    // ),
                  ),
                ),
              ),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Color.fromARGB(255, 229, 249, 255),
                // color: Theme.of(context).primaryColor,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.5),
                    blurRadius: 2,
                    offset: Offset(5, 3),
                    spreadRadius: 2,
                  )
                ],
              ),
            ),
            splashTransition: SplashTransition.scaleTransition,
            duration: 1000,
            animationDuration: Duration(seconds: 2),
            backgroundColor: Colors.transparent,
            splashIconSize: Width * 0.5,
            nextScreen: loginScreen(),
          ),
        ),
      ),
    );
  }
}
