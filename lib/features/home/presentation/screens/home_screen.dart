import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:plisty/features/home/presentation/widgets/header_widget.dart';

import '../widgets/search_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6,
      child: Scaffold(
        backgroundColor: Color(0xFF1E1E1E),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              HeaderWidget(),
              SearchWidget(),
              10.verticalSpace,
              _buildCustomTabBar(),
            ],
          ),
        ),
      ),
    );
  }
}

Widget _buildCustomTabBar() {
  return TabBar(
    padding: EdgeInsets.all(0),

    dividerHeight: 0,
    isScrollable: true,
    labelColor: Colors.white,
    unselectedLabelColor: Colors.white54,
    indicator: BoxDecoration(
      gradient: LinearGradient(
        colors: [Color(0xFF00F7FF), Color(0xFF8727FF)],
        begin: Alignment.centerLeft,
        end: Alignment.centerRight,
      ),
      borderRadius: BorderRadius.circular(8),
    ),
    tabs: [
      _buildTab('الكل', 60.w, 40.h),
      _buildTab('موسيقى', 80.w, 40.h),
      _buildTab('موسيقى', 80.w, 40.h),
      _buildTab('موسيقى', 80.w, 40.h),
      _buildTab('موسيقى', 80.w, 40.h),
      _buildTab('موسيقى', 80.w, 40.h),
    ],
  );
}

Widget _buildTab(String text, double width, double height) {
  return Builder(
    builder: (context) {
      final isSelected = DefaultTabController.of(context)?.index ==
          DefaultTabController.of(context)?.indexIsChanging;

      return Container(
        width: width,
        height: height,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: isSelected ? Colors.grey : Colors.transparent,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Tab(text: text),
      );
    },
  );
}
