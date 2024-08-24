import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class UpcomingEventWidget extends StatefulWidget {
  const UpcomingEventWidget({Key? key, required this.imageUrl, required this.category, required this.title, required this.dateTime, required this.location}) : super(key: key);
  final String imageUrl;
  final String category;
  final String title;
  final String dateTime;
  final String location;

  @override
  State<UpcomingEventWidget> createState() => _UpcomingEventWidgetState();
}

class _UpcomingEventWidgetState extends State<UpcomingEventWidget> {
  bool _isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0,bottom: 20),
      child: Container(
        width: 380.w,
        height: 85.h,
        padding: EdgeInsets.all(6),
        decoration: BoxDecoration(
            color: Color(0xFF3C3C43).withOpacity(0.6),
            borderRadius: BorderRadius.circular(4)
        ),
        child: Row(
          children: [
             Container(
               width: 82.w,
               height: 73.h,
               child: ClipRRect(
                   borderRadius: BorderRadius.circular(5),
                   child: Image.asset(widget.imageUrl,fit: BoxFit.fill,)),
             ),
             Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                10.horizontalSpace,
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ShaderMask(
                      shaderCallback: (Rect bounds) {
                        return LinearGradient(
                          colors: [
                            Color(0xFF00F7FF),
                            Color(0xFF8727FF),
                          ],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                        ).createShader(bounds);
                      },
                      child: Text(
                        widget.title,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        Image.asset('assets/icons/solar_calendar-linear.png'),
                        5.horizontalSpace,
                        Text(
                          widget.dateTime,
                          style: TextStyle(
                            color: Color(0xFFEFEFEF),
                            fontSize: 12.sp,
                          ),
                        ),
                      ],
                    ),
                    4.verticalSpace,
                    Row(
                      children: [
                        Image.asset('assets/icons/ion_location-sharp.png'),
                        5.horizontalSpace,
                        Text(
                          widget.location,
                          style: TextStyle(
                            color: Color(0xFFEFEFEF),
                            fontSize: 12.sp,
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  ],
                ),
                50.horizontalSpace,
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          _isFavorite = !_isFavorite;
                        });
                      },
                      child: _isFavorite
                          ? ShaderMask(
                        shaderCallback: (Rect bounds) {
                          return const LinearGradient(
                            colors: [
                              Color(0xFFFF2FB7),
                              Color(0xFFFF00E4),
                              Color(0xFF00F7FF),
                              Color(0xFF00F7FF),
                            ],
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                          ).createShader(bounds);
                        },
                        child: Icon(
                          Icons.favorite_rounded,
                          size: 20.sp,
                          color: Colors.white,
                        ),
                      )
                          : Icon(
                        Icons.favorite_border_rounded,
                        size: 20.sp,
                        color: Colors.white,
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            Color(0xFF00F7FF),
                            Color(0xFF8727FF),
                          ],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Text(
                        widget.category,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12.sp,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
             ),

          ],
        ),
      ),
    );
  }
}
