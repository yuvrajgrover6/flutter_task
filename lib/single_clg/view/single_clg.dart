import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../components/abtClg.dart';
import '../components/hostel.dart';
import '../components/section1.dart';

class SingleClg extends StatefulWidget {
  SingleClg({Key? key}) : super(key: key);
  var currentIndex = 0;

  final scrollController = ScrollController();

  ValueNotifier<bool> val = ValueNotifier(false);
  @override
  State<SingleClg> createState() => _SingleClgState();
}

class _SingleClgState extends State<SingleClg> {
  postFrameCallback(BuildContext context) {
    widget.scrollController.addListener(() {
      if (widget.scrollController.hasClients) {
        if (widget.scrollController.offset >=
            context.mediaQuery.size.height * 0.26) {
          widget.val.value = true;
        } else {
          widget.val.value = false;
        }
      }
    });
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      postFrameCallback(context);
    });
  }

  @override
  void dispose() {
    super.dispose();
    widget.scrollController.dispose();
    widget.val.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final Color primaryColor = Theme.of(context).colorScheme.primary;
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    final titles = ['About College', 'Hostel facility', 'Q & A', 'Events'];

    return Scaffold(
      backgroundColor: const Color(0xffF5F5F5),
      extendBody: true,
      bottomNavigationBar: Container(
          width: width,
          margin: EdgeInsets.symmetric(horizontal: width * 0.08),
          height: 56,
          decoration: BoxDecoration(
            color: primaryColor,
            borderRadius: BorderRadius.circular(10),
          ),
          child: const Center(
            child: Text(
              'Apply Now',
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
          )),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(height * 0.08),
        child: ValueListenableBuilder(
            valueListenable: widget.val,
            builder: (context, value, child) {
              return AppBar(
                centerTitle: false,
                title: value == true
                    ? const Text(
                        'GHJK Engineering college',
                        style: TextStyle(fontSize: 20),
                      )
                    : null,
                automaticallyImplyLeading: false,
                leading: value == true
                    ? null
                    : Container(
                        margin: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 10),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(80)),
                        child: Icon(
                          Icons.arrow_back,
                          color: primaryColor,
                        )),
                actions: [
                  value == true
                      ? const SizedBox.shrink()
                      : Container(
                          width: 35,
                          margin: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 10),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(80)),
                          child: Icon(
                            Icons.bookmark_outline,
                            color: primaryColor,
                          ))
                ],
              );
            }),
      ),
      body: SingleChildScrollView(
        controller: widget.scrollController,
        child: Column(
          children: [
            Section1(height: height, width: width),
            Container(
              padding: EdgeInsets.symmetric(horizontal: width * 0.03),
              width: width,
              height: height * 0.06,
              decoration: BoxDecoration(
                color: const Color(0xffF5F5F5),
                border: Border.all(color: Colors.black.withOpacity(0.1)),
              ),
              child: SizedBox(
                width: width * 0.93,
                height: height * 0.06,
                child: ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemCount: 4,
                  itemBuilder: (BuildContext context, int index) {
                    return GestureDetector(
                      onTap: () => setState(() {
                        widget.currentIndex = index;
                      }),
                      child: Container(
                        margin: EdgeInsets.only(
                            top: height * 0.015, right: width * 0.1),
                        alignment: Alignment.center,
                        height: height * 0.05,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              titles[index],
                              style: const TextStyle(fontSize: 12),
                            ),
                            if (widget.currentIndex == index)
                              Align(
                                alignment: Alignment.bottomCenter,
                                child: SizedBox(
                                    width: width * 0.2,
                                    child: Divider(
                                      color: primaryColor,
                                      thickness: 2,
                                    )),
                              )
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
            (widget.currentIndex == 0)
                ? AbtClg(width: width, height: height, primaryColor: primaryColor)
                : Hostel(height: height, width: width, primaryColor: primaryColor)
          ],
        ),
      ),
    );
  }
}







