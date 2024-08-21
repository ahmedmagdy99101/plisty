import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../widgets/colored_button.dart';
import '../widgets/custom_container.dart';

class RegisterTab extends StatelessWidget {
  const RegisterTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.only(right: 15),
            width: 343.w,
            height: 45.h,
            decoration: BoxDecoration(
                color: Color(0xFF1E1E1E).withOpacity(0.5),
                borderRadius: BorderRadius.circular(8)
            ),
            child: Row(
              
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 10.0),
                    child: TextField(
                      textAlign: TextAlign.right,
                      decoration: const InputDecoration(
                        hintText: 'اسم المستخدم',

                        hintStyle: TextStyle(

                            color:  Color(0xFFC1C1C1),
                            fontSize: 14,
                            fontWeight: FontWeight.w400
                        ),
                        border: InputBorder.none,
                      ),
                      keyboardType: TextInputType.phone,

                    ),
                  ),
                ),

              ],
            ),
          ),
          10.verticalSpace,
          Container(
            width: 343.w,
            height: 45.h,
            decoration: BoxDecoration(
                color: Color(0xFF1E1E1E).withOpacity(0.5),
                borderRadius: BorderRadius.circular(8)
            ),
            child: Directionality(
              textDirection: TextDirection.ltr,
              child: Row(
                children: [
              
                  Padding(
                    padding: const EdgeInsets.only(left: 18.0,right: 5),
                    child: DropdownButton<String>(
                      underline: Container(),
                      value: '+971',
                      icon: Icon(Icons.keyboard_arrow_down_sharp,color: Color(0xFF8E8E8E),),
                      items: <String>['+971', '+966', '+965'].map((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value,style: TextStyle(color: Colors.white,fontWeight: FontWeight.w400),),
                        );
                      }).toList(),
                      onChanged: (String? newValue) {},
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 10.0),
                      child: TextField(
              
                        decoration: const InputDecoration(
                          hintText: 'رقم الهاتف',
                          hintStyle: TextStyle(
                              color:  Color(0xFFC1C1C1),
                              fontSize: 14,
                              fontWeight: FontWeight.w400
                          ),
                          border: InputBorder.none,
                        ),
                        keyboardType: TextInputType.phone,
              
                      ),
                    ),
                  ),
              
                ],
              ),
            ),
          ),
          20.verticalSpace,
          ColoredButton(text: 'إنشاء حساب ', onTap: () {  },),
          20.verticalSpace,
          Directionality(
            textDirection: TextDirection.ltr,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
            
              children: [
                CustomContainer(path: 'assets/icons/face.png',),
                CustomContainer(path: 'assets/icons/google.png'),
                CustomContainer(path: 'assets/icons/apple.png'),
                CustomContainer(path: 'assets/icons/twitter.png')
            
              ],
            ),
          ),
          TextButton(onPressed: (){},
              child: Text(
                'تسجيل الدخول كزائر',
                style: TextStyle(
                    color: Color(0xFF00F7FF),
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w400
                ),
              ))

        ],
      ),
    );
  }
}
