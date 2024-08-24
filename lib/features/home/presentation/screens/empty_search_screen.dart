import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../widgets/search_filter_bottomsheet.dart';
import '../widgets/search_widget.dart';

class EmptySearchScreen extends StatelessWidget {
  const EmptySearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1E1E1E),

      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 5.0,top: 30),
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

                ],
              ),
            ),
            150.verticalSpace,
            Image.asset('assets/images/empty.png',width: 380,height: 310,),
            Text(
              textAlign: TextAlign.center,
              'عذرًا، لا توجد نتائج للبحث',
            style: TextStyle(
              color: Colors.white,
              fontSize: 18.sp,
              fontWeight:FontWeight.w500,

            ),
            ),
            Text(
              textAlign: TextAlign.center,
              'يرجى البحث عن كلمات مفتاحية أخرى',
              style: TextStyle(
                color: Colors.white,
                fontSize: 10.sp,
                fontWeight:FontWeight.w400,

              ),
            ),
          ],
        ),
      ),
    );
  }
}
