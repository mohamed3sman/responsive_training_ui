import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Club extends StatelessWidget {
  Club({super.key, required this.imageUrl, required this.text});
  String imageUrl;
  String text;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Stack(
        children: [
          Image.asset(
            imageUrl,
            height: 350,
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  text,
                  style:
                      TextStyle(fontSize: 25.sp, fontWeight: FontWeight.w700),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Container(
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)),
                  child: Text(
                    'All levels',
                    style: TextStyle(
                      fontSize: 16.sp,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 18.h,
            left: 20.w,
            child: Text(
              '2 events',
              style: TextStyle(fontSize: 17.sp, fontWeight: FontWeight.w500),
            ),
          ),
        ],
      ),
    );
  }
}
