import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({Key? key,this.width}) : super(key: key);
   final double?width;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 20),
      height: 45.h,
      width: width ??324,
      decoration: BoxDecoration(
        color: Color(0xFF4C4C4F),
        borderRadius: BorderRadius.circular(8),

      ),
     child: Padding(
       padding: const EdgeInsets.symmetric(horizontal: 10.0),
       child: TextField(

         decoration: InputDecoration(
           suffixIcon: Icon(Icons.search_rounded,color: Color(0xFF666666),

           ),
        hintText: 'بحث',
        hintStyle: TextStyle(
          color:  Color(0xFF666666),
          fontSize: 14.sp,
          fontWeight: FontWeight.w400
        )
         ),
       ),
     ),
    );
  }
}
