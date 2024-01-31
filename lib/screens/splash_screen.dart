import 'dart:async';
import 'package:finance_tracker/screens/login_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'home_screen.dart';
import 'utils/colors/color.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      // Exit full screen
      SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
      SystemChrome.setSystemUIOverlayStyle(
          const SystemUiOverlayStyle(statusBarColor: Colors.transparent));
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (_) => HomeScreen()));
    });

    // After 3 seconds, navigate to the HomeScreen and reset system UI mode
    // Timer(const Duration(seconds: 3), () {
    //   SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
    //       overlays: SystemUiOverlay.values);
    //   if (FirebaseAuth.instance.currentUser != null) {
    //     print('\nUser: ${FirebaseAuth.instance.currentUser}');
    //     // navigate to home screen
    //     Navigator.pushReplacement(
    //         context, MaterialPageRoute(builder: (_) => const HomeScreen()));
    //   } else {
    //     // navigate to login screen
    //     Navigator.pushReplacement(
    //         context, MaterialPageRoute(builder: (_) => const LoginScreen()));
    //   }
    // });
  }

  @override
  Widget build(BuildContext context) {
    // initializing Media querry here
    mq = MediaQuery.of(context).size;

    return Scaffold(
      body: Container(
        color: AppColor.SentColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: mq.height * 0.11,
              child:
                  Center(child: Image.asset('assets/images/App-Logo.png')),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'C H A T O G R A M',
              style: TextStyle(fontSize: 20),
            ),
            const Column(
              children: [
                Text(
                  'Created By Muzzu',
                  style: TextStyle(fontSize: 10),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
