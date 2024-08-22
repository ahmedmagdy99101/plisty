import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:plisty/features/home/presentation/widgets/event_widget.dart';
import 'package:plisty/features/home/presentation/widgets/header_widget.dart';
import 'package:plisty/features/home/presentation/widgets/image_slider.dart';
import 'package:plisty/features/home/presentation/widgets/upcoming_event_widget.dart';
import '../widgets/search_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6,
      child: Scaffold(
        backgroundColor: const Color(0xFF1E1E1E),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(right: 24),
            child: Column(

              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const HeaderWidget(),
                const SearchWidget(),
                10.verticalSpace,
                _buildCustomTabBar(),
                16.verticalSpace,
                ImageSlider(imagePaths: [
                  'assets/images/onboarding_3.png',
                  'assets/images/onboarding_3.png',
                ]),
                10.verticalSpace,
                Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'أحداث قريبة منك',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 16.sp,
                          color: Color(0xFFC1C1C1),
                        ),
                      ),
                      Text(
                        'عرض الخريطة',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 12.sp,
                          color: Color(0xFF00F7FF),
                        ),
                      ),
                    ],
                  ),
                ),

                Container(
                  width: double.infinity,
                  height: 300.h,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 3,
                      itemBuilder:(context,index){
                        return  EventWidget(
                          imageUrl: 'assets/images/tst3.png',
                          category: 'موسيقى',
                          title: 'حفل ديجي',
                          dateTime: '2 ديسمبر، 12:00 م',
                          location: 'دبي، برج خليفة',

                        );
                      }

                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'أحداث مميزة',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 16.sp,
                          color: Color(0xFFC1C1C1),
                        ),
                      ),
                      Text(
                        'عرض الكل',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 12.sp,
                          color: Color(0xFF00F7FF),
                        ),
                      ),
                    ],
                  ),
                ),

                Container(
                  width: double.infinity,
                  height: 270.h,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 3,
                      itemBuilder:(context,index){
                        return  EventWidget(
                          imageUrl: 'assets/images/login.png',
                          category: 'موسيقى',
                          title: 'حفل ديجي',
                          dateTime: '2 ديسمبر، 12:00 م',
                          location: 'دبي، برج خليفة',

                        );
                      }

                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'أحداث قادمة',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 16.sp,
                          color: Color(0xFFC1C1C1),
                        ),
                      ),
                      Text(
                        'عرض الكل',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 12.sp,
                          color: Color(0xFF00F7FF),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 600,
                  width: 385.w,
                  child: ListView.builder(
                      scrollDirection: Axis.vertical,
                      itemCount: 3,
                      itemBuilder: (context,index){
                       return UpcomingEventWidget(
                           imageUrl: 'assets/images/onboarding_3.png',
                           category: 'موسيقى',
                           title: 'حفلة مائية',
                           dateTime: '02، ديسمبر، 12:00 م',
                           location: 'دبي، برج خليفة',
                       );
                  }),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildCustomTabBar() {

    return TabBar(
      dividerHeight: 0,
      padding: EdgeInsets.all(0),
      isScrollable: true,
      labelColor: Colors.white,
      unselectedLabelColor: Colors.white54,
      indicator: BoxDecoration(
        gradient: const LinearGradient(
          colors: [Color(0xFF00F7FF), Color(0xFF8727FF)],
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
        ),
        borderRadius: BorderRadius.circular(8),
      ),
      onTap: (index) {
        setState(() {
          _selectedIndex = index;
        });
      },
      tabAlignment: TabAlignment.start,

      tabs: [

        _buildTab('الكل', 58.w, 40.h, 0),
        _buildTab('موسيقى', 80.w, 40.h, 1),
        _buildTab('رياضة', 64.w, 40.h, 2),
        _buildTab('ورشات العمل', 80.w, 40.h, 3),
        _buildTab('احتفالات', 80.w, 40.h, 4),
        _buildTab('مسرح', 80.w, 40.h, 5),
      ],
    );
  }

  Widget _buildTab(String text, double width, double height, int index) {
    final bool isSelected = _selectedIndex == index;

    return Container(
      width: width,
      height: height,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: isSelected ? Colors.transparent : const Color(0xFF444444),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Tab(text: text),
    );
  }
}
