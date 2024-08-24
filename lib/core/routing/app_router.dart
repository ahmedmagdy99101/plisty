import 'package:go_router/go_router.dart';
import 'package:plisty/features/Welcome/presentation/screens/onboarding_screen.dart';
import 'package:plisty/features/Welcome/presentation/screens/splash_screen.dart';
import 'package:plisty/features/auth/presentation/screens/login_screen.dart';
import 'package:plisty/features/auth/presentation/screens/verification_screen.dart';
import 'package:plisty/features/home/presentation/screens/empty_notification.dart';
import 'package:plisty/features/home/presentation/screens/empty_search_screen.dart';
import 'package:plisty/features/home/presentation/screens/home_screen.dart';
import 'package:plisty/features/home/presentation/screens/nearby_events.dart';
import 'package:plisty/features/home/presentation/screens/notifictions_screen.dart';
import 'package:plisty/features/home/presentation/screens/search_screen.dart';
import 'package:plisty/features/home/presentation/screens/upcoming_events_screen.dart';

final GoRouter router = GoRouter(
  initialLocation: "/",
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const SplashScreen(), // Todo SplashScreen
    ),
    GoRoute(
      path: '/upcoming',
      builder: (context, state) => const UpcomingEventsScreen(),
    ),
    GoRoute(
      path: '/emptynotifications',
      builder: (context, state) => const EmptyNotification(),
    ),
    GoRoute(
      path: '/notifications',
      builder: (context, state) =>  NotificationsScreen(),
    ),
    GoRoute(
      path: '/search',
      builder: (context, state) => const SearchScreen(),
    ),
    GoRoute(
      path: '/nearby',
      builder: (context, state) => const NearbyEvents(),
    ),
    GoRoute(
      path: '/empty',
      builder: (context, state) => const EmptySearchScreen(),
    ),
    GoRoute(
      path: '/onboarding',
      builder: (context, state) =>  OnboardingScreen(),
    ),
    GoRoute(
      path: '/login',
      builder: (context, state) =>const  LoginScreen(),
    ),

    GoRoute(
      path: '/verification',
      builder: (context, state) => const VerificationScreen(),
    ),
    GoRoute(
      path: '/home',
      builder: (context, state) => const HomeScreen(),
    ),

  ],

);


