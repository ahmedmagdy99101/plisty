import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:plisty/features/auth/presentation/screens/login_screen.dart';

class OnboardingScreen extends StatefulWidget {
  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _controller = PageController();
  int _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          PageView(
            controller: _controller,
            onPageChanged: (index) {
              setState(() {
                _currentPage = index;
              });
            },
            children: [
              buildOnboardingPage(
                imagePath: 'assets/images/tst2.jpg',
                title: 'استكشف ما يدهش في مدينتك',
                subtitle: 'اكتشف أفضل الفعاليات والمهرجانات الموسيقية في مدينتك.',
              ),
              buildOnboardingPage(
                imagePath: 'assets/images/tst2.jpg',
                title: 'استمتع بالحفلات والأجواء المدهشة',
                subtitle: 'تذوق تجربة لا تُنسى في أفضل الحفلات والمناسبات.',
              ),
              buildOnboardingPage(
                imagePath: 'assets/images/tst2.jpg',
                title: 'قم بزيارة أجمل الأماكن في العالم',
                subtitle: 'استمتع بجولة حول أجمل الأماكن السياحية في العالم.',
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 250.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(3, (index) {
                if (_currentPage == index) {
                  return ShaderMask(
                    shaderCallback: (Rect bounds) {
                      return const LinearGradient(
                        colors: [Color(0xFF00F7FF), Color(0xFF8727FF)],
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                      ).createShader(bounds);
                    },
                    child: Container(
                      margin: const EdgeInsets.symmetric(horizontal: 5),
                      width: 8,
                      height: 8,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                    ),
                  );
                } else {
                  return Container(
                    margin: const EdgeInsets.symmetric(horizontal: 5),
                    width: 8,
                    height: 8,
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.5),
                      shape: BoxShape.circle,
                    ),
                  );
                }
              }),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildOnboardingPage({
    required String imagePath,
    required String title,
    required String subtitle,
  }) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(imagePath),
          fit: BoxFit.cover,
          colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.6), BlendMode.dstATop),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 80),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              title,
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 10),
            Text(
              subtitle,
              style: TextStyle(
                fontSize: 16,
                color: Colors.white.withOpacity(0.8),
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Container(
                width: double.infinity,
                height: 46,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  gradient: const LinearGradient(
                    colors: [
                      Color(0xFF00F7FF), Color(0xFF8727FF )],
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                  ),
                ),
                child: ElevatedButton(
                  onPressed: () {
                 // GoRouter.of(context).push('/login');
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) =>const LoginScreen()),
                    );
                  },
                  style: ElevatedButton.styleFrom(

                    backgroundColor: Colors.transparent,
                    shadowColor: Colors.transparent,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  child: const Text(
                    'ابدأ الآن',
                    style: TextStyle(fontSize: 18,color: Colors.white),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}