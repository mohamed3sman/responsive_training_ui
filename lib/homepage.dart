import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: Column(
          children: [
            Spacer(),
            Expanded(
              flex: 3,
              child: SingleChildScrollView(
                physics: const ScrollPhysics(),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Choose your level',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.sp,
                          fontWeight: FontWeight.w400),
                    ),
                    SizedBox(
                      height: 50.h,
                    ),
                    SizedBox(
                        height: 220.h,
                        child: ListView.builder(
                            itemCount: 3,
                            shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) => Padding(
                                padding: EdgeInsets.only(right: 40.0.w),
                                child: Container(
                                  width: 195.w,
                                  height: 240.h,
                                  decoration: BoxDecoration(
                                      color: const Color(0xfff5f1ee),
                                      borderRadius: BorderRadius.circular(15)),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                        padding: const EdgeInsets.all(5),
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius:
                                                BorderRadius.circular(10)),
                                        child: Image.asset(
                                          'assets/images/muscle.png',
                                          height: 45.h,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 60.h,
                                      ),
                                      Text(
                                        'Average',
                                        style: TextStyle(
                                            fontSize: 23.sp,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                ))))
                  ],
                ),
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    InkWell(
                      onTap: () {
                        Get.toNamed('training');
                        setState(() {});
                      },
                      child: CircleAvatar(
                        radius: 33,
                        backgroundColor: Colors.green[800],
                        child: Icon(
                          Icons.arrow_forward_ios_rounded,
                          color: Colors.white,
                          size: 20,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    InkWell(
                      onTap: () {
                        Get.toNamed('training');
                        setState(() {});
                      },
                      child: Text(
                        'Skip for now',
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}
