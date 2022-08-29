import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_task/college_list/view/college_list.dart';
import 'package:flutter_task/home/controller/homecontroller.dart';
import 'package:get/get.dart';

import '../../widgets/shared/bottom_navbar.dart';
import '../components/picture_container.dart';

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(HomeController());
    final Color primaryColor = Theme.of(context).colorScheme.primary;
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      bottomNavigationBar: BottomNavBar(
          width: width, primaryColor: primaryColor, height: height),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.only(
                right: width * 0.09,
                left: width * 0.09,
                top: height * 0.05,
                bottom: height * 0.03),
            height: height * 0.28,
            width: width,
            decoration: BoxDecoration(
                color: primaryColor,
                borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30))),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.centerRight,
                  child: Stack(
                    children: const [
                      Icon(
                        Icons.notifications,
                        color: Colors.white,
                      ),
                      Positioned(
                          right: 1,
                          top: 2,
                          child: CircleAvatar(
                            backgroundColor: Colors.red,
                            radius: 4,
                          )),
                    ],
                  ),
                ),
                const Text(
                  'Find your own way',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w800),
                ),
                const SizedBox(
                  height: 8,
                ),
                const Text('Search in 600 colleges around',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w700)),
                SizedBox(height: height * 0.03),
                Row(
                  children: [
                    Container(
                        height: 50,
                        width: width * 0.65,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                                width: width * 0.1,
                                child: const Icon(CupertinoIcons.search,
                                    size: 20, color: Color(0xffD6D6D6))),
                            SizedBox(
                              width: width * 0.55,
                              child: const TextField(
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintStyle: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 14,
                                      color: Color(0xffD6D6D6)),
                                  hintText: 'Search for Colleges,school......',
                                ),
                              ),
                            ),
                          ],
                        )),
                    SizedBox(width: width * 0.03),
                    Container(
                      height: 50,
                      width: width * 0.14,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15)),
                      child: Center(
                          child: Icon(
                        CupertinoIcons.mic_fill,
                        color: primaryColor,
                      )),
                    )
                  ],
                )
              ],
            ),
          ),
          SizedBox(height: height * 0.025),
          SizedBox(
            height: (height * 0.58),
            width: width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                PictureContainer(
                  width: width,
                  height: height,
                  image: 'assets/images/rect1.png',
                  title: 'Top Colleges',
                  subtitle:
                      'Search through thousands of accredited colleges and universities online to find the right one for you.  Apply in 3 min, and connect with your future.',
                  rich1: '+126',
                  rich2: ' Colleges',
                  onTap: () {
                    showModalBottomSheet(
                      backgroundColor: Colors.white,
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(30),
                              topRight: Radius.circular(30))),
                      context: context,
                      builder: (BuildContext context) {
                        return GetBuilder<HomeController>(
                            builder: (controller) {
                          return Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: width * 0.07,
                                vertical: height * 0.02),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    const Text(
                                      'Sort By',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18),
                                    ),
                                    IconButton(
                                      icon: const Icon(Icons.cancel),
                                      onPressed: () {
                                        Get.back();
                                      },
                                    )
                                  ],
                                ),
                                SizedBox(
                                  width: width,
                                  child: Divider(
                                    color: Colors.black.withOpacity(0.2),
                                  ),
                                ),
                                SizedBox(
                                  height: height * 0.4,
                                  child: ListView.builder(
                                      padding: EdgeInsets.zero,
                                      itemCount: 6,
                                      itemBuilder: (context, index) {
                                        final sort = controller.sortList[index];
                                        return SizedBox(
                                          height: height * 0.06,
                                          child: ListTile(
                                            minVerticalPadding: 0,
                                            contentPadding: EdgeInsets.zero,
                                            title: Text(
                                              sort['name'],
                                              style: const TextStyle(
                                                  fontWeight: FontWeight.w600,
                                                  fontSize: 16),
                                            ),
                                            trailing: Obx(() => (Radio(
                                                fillColor:
                                                    MaterialStateProperty.all(
                                                        primaryColor),
                                                value: index,
                                                groupValue:
                                                    controller.groupValue.value,
                                                onChanged: (value) {
                                                  controller.groupValue.value =
                                                      value as int;
                                                  Get.to(() =>
                                                      const CollegeList());
                                                }))),
                                            leading: Icon(sort['icon']),
                                          ),
                                        );
                                      }),
                                )
                              ],
                            ),
                          );
                        });
                      },
                    );
                  },
                ),
                PictureContainer(
                  width: width,
                  height: height,
                  image: 'assets/images/rect3.png',
                  title: 'Top Schools',
                  subtitle:
                      'Searching for the best school for you just got easier! With our Advanced School Search, you can easily filter out the schools that are fit for you.',
                  rich1: '+106',
                  rich2: ' Schools',
                  onTap: () {
                    Get.to(() => const CollegeList());
                  },
                ),
                PictureContainer(
                  width: width,
                  height: height,
                  image: 'assets/images/rect2.png',
                  title: 'Exams',
                  subtitle:
                      'Find an end to end information about the exams that are happening in India',
                  rich1: '+16',
                  rich2: ' Exams',
                  onTap: () {
                    Get.to(() => const CollegeList());
                  },
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
