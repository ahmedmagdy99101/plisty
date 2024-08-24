import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ImageSlider extends StatefulWidget {
  final List<String> imagePaths;

  ImageSlider({required this.imagePaths});

  @override
  _ImageSliderState createState() => _ImageSliderState();
}

class _ImageSliderState extends State<ImageSlider> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0),
      child: Column(
        children: [
          CarouselSlider(
            options: CarouselOptions(
              height: 150.h,
              aspectRatio: 16 / 9,
              viewportFraction: 1.0, // Only one slide visible at a time
              initialPage: 0,
              enableInfiniteScroll: false,
              autoPlay: true, // Set to false for manual swipe
              enlargeCenterPage: true,
              scrollDirection: Axis.horizontal,
              onPageChanged: (index, reason) {
                setState(() {
                  _currentIndex = index;
                });
              },
            ),
            items: widget.imagePaths.map((path) {
              return Builder(
                builder: (BuildContext context) {
                  return Container(
                    width: MediaQuery.of(context).size.width,
                  //  margin: const EdgeInsets.symmetric(horizontal: 10.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(14.0),
                      image: DecorationImage(
                        image: AssetImage(path),
                        fit: BoxFit.fill,
                      ),
                    ),
                  );
                },
              );
            }).toList(),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: widget.imagePaths.asMap().entries.map((entry) {
              return GestureDetector(
                onTap: () => setState(() => _currentIndex = entry.key),
                child: Container(
                  width: 18.w, // Set width to 18
                  height: 2.h,  // Set height to 2
                  margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    gradient: _currentIndex == entry.key
                        ? const LinearGradient(
                      colors: [Color(0xFF00F7FF), Color(0xFF8727FF)],
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                    )
                        : null,  // Apply gradient if selected
                    color: _currentIndex == entry.key ? null : Colors.grey,  // Apply grey color if not selected
                  ),
                ),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}
