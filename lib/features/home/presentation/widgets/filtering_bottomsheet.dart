import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FilteringBottomsheet extends StatefulWidget {
  @override
  _FilteringBottomsheetState createState() => _FilteringBottomsheetState();
}

class _FilteringBottomsheetState extends State<FilteringBottomsheet> {
  String selectedSection = 'الكل';
  String selectedDate = 'اليوم';

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.w),
      decoration: BoxDecoration(
        color: Color(0xFF1E1E1E),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(24),
          topRight: Radius.circular(24),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'الأقسام',
            style: TextStyle(color: Color(0xFF00D2FF), fontSize: 16.sp),
          ),
          8.verticalSpace,
          Wrap(
            spacing: 8.w,
            runSpacing: 8.h,
            children: [
              _buildSectionButton('الكل'),
              _buildSectionButton('موسيقى'),
              _buildSectionButton('رياضة'),
              _buildSectionButton('ورشات العمل'),
              _buildSectionButton('الاحتفالات'),
            ],
          ),
          16.verticalSpace,

          Text(
            'التاريخ',
            style: TextStyle(color: Color(0xFF00D2FF), fontSize: 16.sp),
          ),
          8.verticalSpace,
          Wrap(
            spacing: 8.w,
            runSpacing: 8.h,
            children: [
              _buildDateButton('اليوم'),
              _buildDateButton('عطلة الأسبوع'),
              _buildDateButton('إجازات رسمية'),
              _buildDateButton('احتفالات'),
            ],
          ),
          16.verticalSpace,

          // Country Dropdown
          _buildDropdown('البلد', ['اختر']),
          16.verticalSpace,

          // City Dropdown
          _buildDropdown('المدينة', ['اختر']),
          16.verticalSpace,

          // Date Picker
          _buildDatePicker('التاريخ'),
          16.verticalSpace,
          GestureDetector(
            onTap: () {
            },
            child: Center(
              child: Container(
                width: 250.w,
                padding: EdgeInsets.symmetric(vertical: 14.h),
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
                child: Center(
                  child: Text(
                    'تطبيق الفلتر',
                    style: TextStyle(
                      fontSize: 16.sp,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSectionButton(String text) {
    bool isSelected = text == selectedSection;

    return GestureDetector(
      onTap: () {
        setState(() {
          selectedSection = text;
        });
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
        decoration: BoxDecoration(
          color: isSelected ? Color(0xFF8727FF) : Color(0xFF3C3C43),
          borderRadius: BorderRadius.circular(4),
          gradient: isSelected
              ? LinearGradient(
            colors: [Color(0xFF00F7FF), Color(0xFF8727FF)],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          )
              : null,
        ),
        child: Text(
          text,
          style: TextStyle(
            color: isSelected ? Colors.white : Colors.grey[400],
            fontSize: 14.sp,
          ),
        ),
      ),
    );
  }

  Widget _buildDateButton(String text) {
    bool isSelected = text == selectedDate;

    return GestureDetector(
      onTap: () {
        setState(() {
          selectedDate = text;
        });
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
        decoration: BoxDecoration(
          color: isSelected ? Color(0xFF8727FF) : Color(0xFF3C3C43),
          borderRadius: BorderRadius.circular(4),
          gradient: isSelected
              ? LinearGradient(
            colors: [Color(0xFF00F7FF), Color(0xFF8727FF)],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          )
              : null,
        ),
        child: Text(
          text,
          style: TextStyle(
            color: isSelected ? Colors.white : Colors.grey[400],
            fontSize: 14.sp,
          ),
        ),
      ),
    );
  }

  Widget _buildDropdown(String label, List<String> options) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyle(color: Color(0xFF00D2FF), fontSize: 16.sp),
        ),
        8.verticalSpace,
        Container(
          height: 46.h,
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
          decoration: BoxDecoration(
            color: Color(0xFF3C3C43),
            borderRadius: BorderRadius.circular(12),
          ),
          child: DropdownButton<String>(
            isExpanded: true,
            icon: Icon(
              Icons.keyboard_arrow_down_rounded,
              color: Colors.white,
            ),
            underline: SizedBox(),
            dropdownColor: Color(0xFF3C3C43),
            value: options.first,
            items: options.map((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(
                  value,
                  style: TextStyle(color: Colors.white, fontSize: 14.sp),
                ),
              );
            }).toList(),
            onChanged: (newValue) {},
          ),
        ),
      ],
    );
  }

  Widget _buildDatePicker(String label) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyle(color: Color(0xFF00D2FF), fontSize: 16.sp),
        ),
        8.verticalSpace,

        Container(
          height: 46.h,
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
          decoration: BoxDecoration(
            color: Color(0xFF3C3C43),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Row(
            children: [

              8.verticalSpace,
              Text(
                'اختر',
                style: TextStyle(color: Colors.white, fontSize: 14.sp),
              ),
              Spacer(),
              Image.asset('assets/icons/solar_calendar-linear.png'),
            ],
          ),
        ),
      ],
    );
  }
}
