import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 40.0),
      child: Row(
        children: [
          Container(
            width: 50.w,
            height: 50.h,
            child: ClipRRect(
                borderRadius: BorderRadius.circular(100),
                child: Image.asset('assets/images/c.jpg',fit: BoxFit.fill,)),
          ),
          10.horizontalSpace,
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('أهلاً بك، مستخدم',
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 20.sp,
                  color: Colors.white,
                ),
              ),
              Row(
                children: [

                  Icon(Icons.location_on,color: Color(0xFF00F7FF),size: 15,),
                  5.horizontalSpace,
                  Text('دبي، الإمارات العربية المتحدة',
                    style: TextStyle(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w400,
                      color: Color(0xFFC1C1C1)

                    ),
                  ),
                  Icon(Icons.keyboard_arrow_down_rounded,color: Colors.grey,size: 15,),

                ],
              ),

            ],
          ),
          Spacer(),
          IconButton(onPressed: (){},

              icon: Icon(Icons.notifications,color:  Color(0xFF00F7FF).withOpacity(0.8),size: 30,))
        ],

      ),
    );
  }
}
