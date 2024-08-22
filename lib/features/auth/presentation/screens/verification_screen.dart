import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:pinput/pinput.dart';
import 'package:plisty/features/auth/presentation/widgets/colored_button.dart';

class VerificationScreen extends StatelessWidget {
  const VerificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String _selectedLanguage = 'English';

    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'assets/images/login.png',
            fit: BoxFit.fill,
            height: double.infinity,
            width: double.infinity,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, top: 40, right: 20),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  60.verticalSpace,
                  Container(
                      width: 78.w,
                      height: 90.h,
                      child: Image.asset('assets/images/Graphic_Element.png')),
                  20.verticalSpace,
                  Container(
                      width: 129.w,
                      height: 79.h,
                      child: Image.asset('assets/images/plisty.png')),
                  60.verticalSpace,
                  Text(
                    'التحقق من رقم الهاتف',
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 20.sp,
                      color: Colors.white,
                    ),
                  ),
                  10.verticalSpace,
                  Text(
                    textAlign: TextAlign.center,
                    'ادخل رمز التحقق المكون من 4 أرقام الذي أرسل إلى                      '
                        '+971 1234567890',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 13.sp,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  32.verticalSpace,
                  Directionality(
                    textDirection: TextDirection.ltr,
                    child: Pinput(
                      closeKeyboardWhenCompleted: true,
                      length: 4,
                      onCompleted: (value) {
                        // Handle OTP completion here
                      },
                      validator: (p0) {
                        return p0!.isEmpty ? 'ادخل الكود رجاءا' : null;
                      },
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      disabledPinTheme: PinTheme(
                        height: 60.h,
                        width: 75,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12.r),
                          color: Colors.white,
                          border: Border.all(color: Colors.pink),
                        ),
                      ),
                      defaultPinTheme: PinTheme(
                        padding: EdgeInsets.all(8),
                        height: 60.h,
                        width: 75,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12.r),
                          color: Colors.black12,
                          border: Border.all(color: Colors.white),
                        ),
                        textStyle: TextStyle(
                          color:Colors.white,
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                    ),
                  ),
                  35.verticalSpace,
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30.0 ),
                    child: ColoredButton(text: 'إرسال', onTap: () {
                      GoRouter.of(context).push('/home');
                    }),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextButton(
                          onPressed: () {
                            // Handle resend code
                          },
                          child: Text(
                            'إعادة إرسال الرمز',
                            style: TextStyle(
                              color: Color(0xFF00F7FF),
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        Text(
                          '1:23',
                          style: TextStyle(
                            color: Color(0xFFC1C1C1),
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w600,
                          ),
                        ),

                      ],
                    ),
                  ),
                  100.verticalSpace,
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.language, color: Colors.white),
                        8.horizontalSpace,
                        DropdownButton<String>(
                          icon: Icon(Icons.keyboard_arrow_down_sharp, color: Colors.white, size: 20),
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
                            // Handle language change
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
    );
  }
}
