import 'package:flutter/material.dart';
import 'package:flutter_task/home/view/hompage.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Task',
      theme: ThemeData(
        fontFamily: GoogleFonts.lato().fontFamily,
        colorScheme:
            ColorScheme.fromSwatch().copyWith(primary: const Color(0xff0E3C6E)),
      ),
      home: const Homepage(),
    );
  }
}
