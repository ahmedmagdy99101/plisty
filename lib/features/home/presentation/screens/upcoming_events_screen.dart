import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:plisty/features/home/presentation/widgets/customized_upcoming_widget.dart';
import 'package:plisty/features/home/presentation/widgets/filtering_bottomsheet.dart';
import 'package:plisty/features/home/presentation/widgets/search_widget.dart';

class UpcomingEventsScreen extends StatelessWidget {
  const UpcomingEventsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1E1E1E),

      body: SingleChildScrollView(
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
                  Text('أحداث قادمة',style: TextStyle(
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
                             showModalBottomSheet(
                               context: context,
                               isScrollControlled: true,
                               backgroundColor: Colors.transparent,
                               builder: (context) => FilteringBottomsheet(),
                             );


                           },
                           icon: Icon(FontAwesomeIcons.sliders,color: Colors.white,size: 20,),
                         ),
                       ),
        
                     ],
                   ),
                   SizedBox(
                     width: 385.w,
                     height: 800.h,
                     child: ListView.separated(
                         scrollDirection: Axis.vertical,
                         itemBuilder: (context,index){
                           return CustomizedUpcomingWidget(
                               imageUrl: 'assets/images/horse.png',
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
    );
  }
}
