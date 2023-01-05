import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Calender extends StatelessWidget {
  Calender({super.key, required this.icon, required this.text});
  IconData icon;
  String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 14.h, right: 20.w, bottom: 15.h),
      child: Container(
        padding: const EdgeInsets.all(13),
        decoration: BoxDecoration(
            color: Colors.transparent,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
              color: Colors.grey,
              width: 1.sp,
            )),
        child: Column(
          children: [
            Icon(
              icon,
              color: Colors.grey,
            ),
            SizedBox(
              height: 10.h,
            ),
            Text(
              text,
              style: const TextStyle(color: Colors.grey),
            ),
          ],
        ),
      ),
    );
  }
}
