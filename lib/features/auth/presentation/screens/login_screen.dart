import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:plisty/features/auth/presentation/screens/login_tab.dart';
import 'package:plisty/features/auth/presentation/screens/register_tab.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  String _selectedLanguage = 'English';

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            Image.asset(
              'assets/images/tst2.jpg',
              fit: BoxFit.fill,
              height: double.infinity,
              width: double.infinity,
            ),
            SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.only(left: 20.0, top: 40, right: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    60.verticalSpace,
                    Container(
                      width: 78.w,
                      height: 90.h,
                      child: Image.asset('assets/images/Graphic_Element.png'),
                    ),
                    20.verticalSpace,
                    Container(
                      width: 129.w,
                      height: 79.h,
                      child: Image.asset('assets/images/plisty.png'),
                    ),
                    60.verticalSpace,
                    _buildCustomTabBar(),
                    20.verticalSpace,
                    Container(
                      height: 400.h, // Provide some height for the TabBarView
                      child: TabBarView(
                        children: [
                          LoginTab(),
                          RegisterTab(),

                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.language, color: Colors.white),
                          5.horizontalSpace,
                          DropdownButton<String>(
                            icon: Icon(Icons.keyboard_arrow_down_sharp, color: Colors.white),
                            value: _selectedLanguage,
                            items: <String>['English', 'Arabic'].map((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(
                                  value,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              );
                            }).toList(),
                            onChanged: (String? newValue) {
                              setState(() {
                                _selectedLanguage = newValue!;
                              });
                            },
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCustomTabBar() {
    return TabBar(
      padding: EdgeInsets.all(0),
      dividerHeight: 0,
      labelColor: Colors.white,
      unselectedLabelColor: Colors.white54,
      indicator: BoxDecoration(
        color: Color(0xFF8727FF), // Purple color for the selected tab
        borderRadius: BorderRadius.circular(8),
      ),
      tabs: [

        Container(
          width: 180.w,
          height: 28.h,
          alignment: Alignment.center,
          child: Tab(text: 'تسجيل الدخول'),
        ),
        Container(
          width: 180.w,
          height: 28.h,
          alignment: Alignment.center,
          child: Tab(text: 'إنشاء حساب'),
        ),
      ],
    );
  }
}
