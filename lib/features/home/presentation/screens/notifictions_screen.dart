import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class NotificationsScreen extends StatelessWidget {
  const NotificationsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1E1E1E),

      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
        
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 30, right:18.0,left: 18),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      GestureDetector(
        
                        child: Icon(
                          Icons.arrow_back_ios_new,size: 15,
                          color: Colors.white,),
                        onTap: (){
                          Navigator.of(context).pop();
                        },
                      ),
                      5.verticalSpace,
                      Text('التنبيهات',style: TextStyle(
                          color: Colors.white,
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w400
                      ),)
                    ],
                  ),
                  TextButton(onPressed: (){
                    GoRouter.of(context).push('/emptynotifications');
                  }, child: Text('مسح الكل'
                    ,
                    style: TextStyle(
                      color: Color(0xFF00F7FF),
                    ),
                  ))
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 22.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
        
                  Text('اليوم',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w700,
                  ),
                  ),
                  Container(
                    width: 390.w,
                    height: 340.h,
                    child: ListView.builder(
                        itemCount: 3,
                        itemBuilder: (context,index){
        
                      return   _buildNotificationItem(
                        time: 'p1:00',
                        title: 'تحديث جديد',
                        description: 'تحديث جديد تم إضافة ميزات جديدة إلى تطبيقنا لتجربة أفضل، قم بتحديث التطبيق الآن.',
                        iconPath: 'assets/images/not.png',
                      );
                    }),
                  ),
        
                  Text('البارحة',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Container(
                    width: 390.w,
                    height: 210.h,
                    child: ListView.builder(
                        itemCount: 2,
                        itemBuilder: (context,index){
        
                          return   _buildNotificationItem(
                            time: 'p1:00',
                            title: 'تحديث جديد',
                            description: 'تحديث جديد تم إضافة ميزات جديدة إلى تطبيقنا لتجربة أفضل، قم بتحديث التطبيق الآن.',
                            iconPath: 'assets/images/not.png',
                          );
                        }),
                  ),
        
                  Text('12/8/2024',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Container(
                    width: 390.w,
                    height: 220.h,
                    child: ListView.builder(
                        itemCount: 2,
                        itemBuilder: (context,index){
        
                          return   _buildNotificationItem(
                            time: 'p1:00',
                            title: 'تحديث جديد',
                            description: 'تحديث جديد تم إضافة ميزات جديدة إلى تطبيقنا لتجربة أفضل، قم بتحديث التطبيق الآن.',
                            iconPath: 'assets/images/not.png',
                          );
                        }),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
  Widget _buildNotificationItem({
    required String time,
    required String title,
    required String description,
    required String iconPath,
  }) {
    return Container(
      margin: EdgeInsets.only(top: 10),
      width: 385.w,
      height: 90.h,
      decoration: BoxDecoration(
        color: Color(0xFF4C4C4F),
        borderRadius: BorderRadius.circular(4),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  iconPath,
                  width: 24.w,
                  height: 24.h,
                ),
                6.horizontalSpace,
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            title,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16.sp,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            time,
                            style: TextStyle(
                              color: Colors.grey[400],
                              fontSize: 12.sp,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Text(
              description,
              style: TextStyle(
                color: Colors.white,
                fontSize: 12.sp,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
