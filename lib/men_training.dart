import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:tennis_app/calender.dart';

class MenTraining extends StatefulWidget {
  const MenTraining({super.key});

  @override
  State<MenTraining> createState() => _MenTrainingState();
}

class _MenTrainingState extends State<MenTraining> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            SingleChildScrollView(
              child: Expanded(
                child: Stack(
                  children: [
                    Image.asset('assets/images/man.PNG'),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: InkWell(
                        onTap: () {
                          Get.toNamed('training');
                          setState(() {});
                        },
                        child: Container(
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10)),
                          child: const Icon(
                            Icons.arrow_back_ios_new_rounded,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
                child: Container(
              decoration: const BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25),
                      topRight: Radius.circular(25))),
              child: SingleChildScrollView(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Divider(
                        color: Colors.grey[700],
                        height: 25.h,
                        thickness: 4.sp,
                        indent: 145.w,
                        endIndent: 145.w,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(18.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Men\'s League',
                              style: TextStyle(
                                  fontSize: 30.sp,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white),
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Text(
                              'Take Part in a 2-hour session where \nyou can expext plenty of rallying followed \nby competitive point play team singles style.',
                              style: TextStyle(
                                  color: Colors.grey, fontSize: 14.sp),
                            ),
                            SizedBox(
                              width: double.infinity,
                              height: 110.h,
                              child: ListView(
                                scrollDirection: Axis.horizontal,
                                children: [
                                  Calender(
                                      icon: Icons.calendar_month_outlined,
                                      text: '24 February'),
                                  Calender(
                                      icon: Icons.access_time_outlined,
                                      text: '18:00 - 20:00'),
                                  Calender(
                                      icon: Icons.star_border_rounded,
                                      text: 'All levels')
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 5.h,
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width,
                              child: MaterialButton(
                                onPressed: () {},
                                padding: EdgeInsets.symmetric(vertical: 15.h),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(12)),
                                color: Colors.green[700],
                                textColor: Colors.white,
                                child: Text('Participate \$30'),
                              ),
                            )
                          ],
                        ),
                      ),
                    ]),
              ),
            ))
          ],
        ),
      ),
    );
  }
}
