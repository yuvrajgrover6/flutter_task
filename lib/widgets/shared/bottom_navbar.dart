import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    Key? key,
    required this.width,
    required this.primaryColor,
    required this.height,
  }) : super(key: key);

  final double width;
  final Color primaryColor;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: width * 0.07),
      color: primaryColor,
      height: 65,
      width: width,
      child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Icon(
                  Icons.home,
                  color: Colors.white,
                  size: 31,
                ),
                const Text(
                  'Search',
                  style: TextStyle(fontSize: 10, color: Colors.white),
                ),
                SizedBox(height: height * 0.005),
                const SizedBox(
                  width: 50,
                  child: Divider(
                    color: Colors.white,
                    height: 5,
                    thickness: 3,
                  ),
                )
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: const [
                Icon(
                  Icons.bookmark,
                  color: Color(0xffBBBBBB),
                  size: 31,
                ),
                Text(
                  'saved',
                  style: TextStyle(fontSize: 10, color: Color(0xffBBBBBB)),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: const [
                Icon(
                  Icons.music_note_rounded,
                  color: Color(0xffBBBBBB),
                  size: 31,
                ),
                Text(
                  'saved',
                  style: TextStyle(fontSize: 10, color: Color(0xffBBBBBB)),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: const [
                Icon(
                  CupertinoIcons.person_fill,
                  color: Color(0xffBBBBBB),
                  size: 31,
                ),
                Text(
                  'account',
                  style: TextStyle(fontSize: 10, color: Color(0xffBBBBBB)),
                ),
              ],
            ),
          ]),
    );
  }
}
