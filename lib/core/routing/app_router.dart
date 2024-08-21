import 'package:go_router/go_router.dart';
import 'package:plisty/features/Welcome/presentation/screens/onboarding_screen.dart';
import 'package:plisty/features/Welcome/presentation/screens/splash_screen.dart';
import 'package:plisty/features/auth/presentation/screens/login_screen.dart';
import 'package:plisty/features/auth/presentation/screens/verification_screen.dart';
import 'package:plisty/features/home/presentation/screens/home_screen.dart';

final GoRouter router = GoRouter(
  initialLocation: "/",
  // AppSharedPreferences.sharedPreferences.containsKey(AppStrings.accessToken)
  //     ? "/home"
  //     : "/",
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) =>  SplashScreen(), // Todo SplashScreen
    ),


    GoRoute(
      path: '/onboarding',
      builder: (context, state) =>  OnboardingScreen(),
    ),
    GoRoute(
      path: '/login',
      builder: (context, state) =>  LoginScreen(),
    ),

    GoRoute(
      path: '/verification',
      builder: (context, state) =>  VerificationScreen(),
    ),
    GoRoute(
      path: '/home',
      builder: (context, state) =>  HomeScreen(),
    ),

  ],

);


