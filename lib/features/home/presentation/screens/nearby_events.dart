import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:plisty/features/home/presentation/widgets/customized_upcoming_widget.dart';

import '../widgets/search_widget.dart';

class NearbyEvents extends StatelessWidget {
  const NearbyEvents({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1E1E1E),

      body: SingleChildScrollView(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 30.0),
            child: Column(
              children: [
                Row(
                  children: [
                    IconButton(
                        onPressed: (){
                          Navigator.of(context).pop();
                        },
                        icon: Icon(Icons.arrow_back_ios_new,size: 15,
                          color: Colors.white,)),
                    Text('أحداث قريبة منك',style: TextStyle(
                        color: Colors.white,
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w400
                    ),)
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Column(
          
                    children: [
          
                      Row(
                        children: [
                          SearchWidget(width: 300,),
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
                              },
                              icon: Icon(FontAwesomeIcons.sliders,color: Colors.white,size: 20,),
                            ),
                          ),
          
                        ],
                      ),
                      15.verticalSpace,
                      Image.asset('assets/images/map.png'),
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
          
                                Text('أحداث قريبة منك',
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
                                  '  الترتيب بحسب: التاريخ',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 12.sp,
                                      color: Colors.white
                                  ),
                                ),
                                Icon(Icons.keyboard_arrow_down_rounded,color: Colors.grey,),
          
                              ],
                            ),
          
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 385.w,
                        height: 800.h,
                        child: ListView.separated(
                            scrollDirection: Axis.vertical,
                            itemBuilder: (context,index){
                              return CustomizedUpcomingWidget(
                                imageUrl: 'assets/images/Rectangle.png',
                                category: 'رياضة',
                                title: 'سباق خيل',
                                dateTime: '2 ديسمبر، 12:00 م',
                                location: 'دبي، الخليج التجاري',
                              );
                            },
                            separatorBuilder: (context,index)=>SizedBox(height: 10.h,),
                            itemCount: 6),
                      )
          
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
