import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:plisty/features/home/presentation/screens/upcoming_events_screen.dart';
import 'package:plisty/features/home/presentation/widgets/search_filter_bottomsheet.dart';
import 'package:plisty/features/home/presentation/widgets/search_widget.dart';
import 'package:plisty/features/home/presentation/widgets/upcoming_event_widget.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1E1E1E),

      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 30.0,right: 5),
              child: Row(
                children: [
                  IconButton(
                      onPressed: (){
                        Navigator.of(context).pop();
                      },
                      icon: Icon(Icons.arrow_back_ios_new,size: 15,
                        color: Colors.white,)),
                  Text('بحث',style: TextStyle(
                      color: Colors.white,
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w400
                  ),)
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Column(
                children: [

                  Row(
                    children: [
                      SearchWidget(width: 260.w,),
                      Container(
                        width: 44.w,
                        height: 44.h,
                        decoration:BoxDecoration (
                            gradient: const LinearGradient(
                              colors: [Color(0xFF00F7FF), Color(0xFF8727FF)],
                              begin: Alignment.centerLeft,
                              end: Alignment.centerRight,
                            ),
                            borderRadius: BorderRadius.circular(10)
                        ),
                        child: IconButton(
                          onPressed: (){
                            showModalBottomSheet(
                              context: context,
                              isScrollControlled: true,
                              backgroundColor: Colors.transparent,
                              builder: (context) => SearchFilterBottomsheet(),
                            );
                          },
                          icon: Icon(FontAwesomeIcons.sliders,color: Colors.white,size: 20,),
                        ),
                      ),

                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,

                      children: [
                        Row(
                          children: [
                            Text('يوجد',
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12.sp,

                                  color: Colors.white
                              ),
                            ),
                            5.horizontalSpace,

                            ShaderMask(
                              shaderCallback: (Rect bounds) {
                                return LinearGradient(
                                  colors: [
                                    Color(0xFF8727FF),
                                    Color(0xFF00F7FF),

                                  ],
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                ).createShader(bounds);
                              },
                              child: Text(
                                '7',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            5.horizontalSpace,

                            Text('نتائج',
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12.sp,
                                  color: Colors.white
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              '  الترتيب بحسب:  الأكثر صلة',
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12.sp,
                                  color: Colors.white
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 20.0),

                              child: Icon(Icons.keyboard_arrow_down_rounded,color: Colors.grey,),
                            ),

                          ],
                        ),

                      ],
                    ),
                  ),
                  Container(
                    height: 1000,
                    width: 400.w,
                    child: ListView.separated(
                        scrollDirection: Axis.vertical,
                        itemCount: 15,
                        itemBuilder: (context,index){
                          return UpcomingEventWidget(
                            imageUrl: 'assets/images/tst1.png',
                            category: 'موسيقى',
                            title: 'حفلة مائية',
                            dateTime: '02، ديسمبر، 12:00 م',
                            location: 'دبي، برج خليفة',
                          );
                        }, separatorBuilder: (BuildContext context, int index)=>SizedBox(height: 10.h,),),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
