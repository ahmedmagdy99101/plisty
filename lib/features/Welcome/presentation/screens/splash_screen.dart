import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:plisty/features/Welcome/presentation/screens/onboarding_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});


  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(
          height: double.infinity,
          width: double.infinity,
          child: Image.asset('assets/images/tst.png',fit: BoxFit.fill,)),
    );
  }

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 2), () {

      GoRouter.of(context).push('/onboarding');
    });
  }
}