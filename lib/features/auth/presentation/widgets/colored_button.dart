import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ColoredButton extends StatelessWidget {
  const ColoredButton({Key? key, required this.text, required this.onTap}) : super(key: key);
  final String text;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 330.w,
      height: 46.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4), // Match the border radius with the button
        gradient: LinearGradient(
          colors: [
            Color(0xFF00F7FF).withOpacity(0.4),
            Color(0xFF8727FF).withOpacity(0.4)
          ],
          begin: Alignment.topLeft,
          end: Alignment.topRight,
        ),
      ),
      child: ElevatedButton(
        onPressed: () {
         onTap();
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.transparent, // Transparent background
          shadowColor: Colors.transparent, // No shadow
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4), // Match the border radius with the container
          ),
          padding: EdgeInsets.zero, // Remove internal padding to match container size
        ),
        child: Ink(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color(0xFF00F7FF).withOpacity(0.4),
                Color(0xFF8727FF).withOpacity(0.4)
              ],
              begin: Alignment.topLeft,
              end: Alignment.topRight,
            ),
            borderRadius: BorderRadius.circular(4), // Match the border radius with the container
          ),
          child: Container(
            alignment: Alignment.center,
            constraints: BoxConstraints(
              maxWidth: double.infinity,
              minHeight: 46,
            ),
            child: Text(
              text,
              style: TextStyle(fontSize: 18, color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
