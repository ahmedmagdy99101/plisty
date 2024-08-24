import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomizedUpcomingWidget extends StatefulWidget {
  const CustomizedUpcomingWidget({Key? key, required this.imageUrl, required this.category, required this.title, required this.dateTime, required this.location}) : super(key: key);
  final String imageUrl;
  final String category;
  final String title;
  final String dateTime;
  final String location;

  @override
  State<CustomizedUpcomingWidget> createState() => _UpcomingEventWidgetState();
}

class _UpcomingEventWidgetState extends State<CustomizedUpcomingWidget> {
  bool _isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 385.w,
      decoration: BoxDecoration(
        color: const Color(0xFF1E1E1E),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(4),
                  topRight: Radius.circular(4),
                ),
                child: Image.asset(
                  widget.imageUrl,
                  height: 150.h,
                  width: 385.w,
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                top: 8,
                right: 8,
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      _isFavorite = !_isFavorite;
                    });
                  },
                  child: Container(
                    width: 32.w,
                    height: 32.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: Color(0xFF3C3C43).withOpacity(0.8),
                    ),
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
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ShaderMask(
                      shaderCallback: (Rect bounds) {
                        return LinearGradient(
                          colors: [
                            Color(0xFF8727FF),
                            Color(0xFF9D44FD),

                            Color(0xFF8727FF),
                            Color(0xFF00F7FF),
                          ],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ).createShader(bounds);
                      },
                      child: Text(
                        widget.title,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Container(
                      width: 37.w,
                      height: 20.h,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            Color(0xFF00F7FF),
                            Color(0xFF8727FF),
                          ],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: Text(
                        textAlign: TextAlign.center,
                        widget.category,
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                          fontSize: 12.sp,
                        ),
                      ),
                    ),
                  ],
                ),
                10.verticalSpace,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
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

                  ],
                ),

              ],
            ),
          ),
        ],
      ),
    );
  }
}
