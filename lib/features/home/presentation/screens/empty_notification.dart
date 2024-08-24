import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../widgets/search_widget.dart';

class EmptyNotification extends StatelessWidget {
  const EmptyNotification({Key? key}) : super(key: key);

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
                  Text('التنبيهات',style: TextStyle(
                      color: Colors.white,
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w400
                  ),)
                ],
              ),
            ),

            Image.asset('assets/images/not2.png',width: 310.w,height: 420.h,),
            Text(
              textAlign: TextAlign.center,
              'لا يوجد لديك أي إشعارات',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18.sp,
                fontWeight:FontWeight.w500,

              ),
            ),
            Text(
              textAlign: TextAlign.center,
              'ستظهر الإشعارات الجديدة هنا',
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
