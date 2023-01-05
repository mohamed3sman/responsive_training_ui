import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:tennis_app/clubs.dart';

class TrainingPage extends StatefulWidget {
  const TrainingPage({super.key});

  @override
  State<TrainingPage> createState() => _TrainingPageState();
}

class _TrainingPageState extends State<TrainingPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: Padding(
            padding: const EdgeInsets.all(6.0),
            child: InkWell(
              onLongPress: () {
                Get.toNamed('home');
                setState(() {});
              },
              child: Container(
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(10)),
                  child: Icon(
                    Icons.menu,
                    size: 22.sp,
                  )),
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(
                Icons.search_rounded,
                color: Colors.black,
                size: 30.sp,
              ),
            )
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(6.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Clubs',
                  style:
                      TextStyle(fontSize: 30.sp, fontWeight: FontWeight.w700),
                ),
                SizedBox(
                  height: 20.h,
                ),
                SizedBox(
                  height: 310.h,
                  child: ListView(scrollDirection: Axis.horizontal, children: [
                    Padding(
                      padding: EdgeInsets.only(right: 20.0.w),
                      child: Club(
                          imageUrl: 'assets/images/woman.PNG',
                          text: 'Women\'s \nClub'),
                    ),
                    InkWell(
                        onTap: () {
                          Get.toNamed('men_train');
                          setState(() {});
                        },
                        child: Club(
                            imageUrl: 'assets/images/men.PNG',
                            text: 'Men\'s \nClub'))
                  ]),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Train',
                        style: TextStyle(
                            fontSize: 22.sp, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Alles',
                        style: TextStyle(
                            color: Colors.green[600],
                            fontSize: 18.sp,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                Column(
                  children: [
                    ListTile(
                      leading: Container(
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            color: Colors.grey[300],
                            borderRadius: BorderRadius.circular(10)),
                        child: Image.asset('assets/images/meditation.png'),
                      ),
                      title: const Text(
                        'Yoga & Tennis',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      subtitle: const Text('Feb 27 | 10:00am - 11:00am'),
                      trailing: const CircleAvatar(
                        backgroundColor: Colors.black,
                        child: Text(
                          '\$10',
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    ListTile(
                      leading: Container(
                        padding: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            color: Colors.grey[300],
                            borderRadius: BorderRadius.circular(10)),
                        child: Image.asset('assets/images/ball.png'),
                      ),
                      title: const Text(
                        'Beginner Bootcamp',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      subtitle: const Text('July 17 | 12:00pm - 3:00pm'),
                      trailing: const CircleAvatar(
                        backgroundColor: Colors.black,
                        child: Text(
                          '\$10',
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    ListTile(
                      leading: Container(
                        padding: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            color: Colors.grey[300],
                            borderRadius: BorderRadius.circular(10)),
                        child: Image.asset('assets/images/muscle.png'),
                      ),
                      title: const Text(
                        'Men\'s League ',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      subtitle: const Text('Feb 27 | 10:00am - 11:00am'),
                      trailing: const CircleAvatar(
                        backgroundColor: Colors.black,
                        child: Text(
                          '\$30',
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
