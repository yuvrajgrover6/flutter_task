import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  Rx<int> groupValue = 1.obs;
  final List<Map> sortList = [
    {'name': 'Bachelor of Technology', 'icon': Icons.school, 'value': 1},
    {'name': 'Bachelor of Engineering', 'icon': Icons.architecture, 'value': 2},
    {
      'name': 'Bachelor of Architecture',
      'icon': Icons.local_pharmacy,
      'value': 3
    },
    {'name': 'Pharmacy', 'icon': Icons.gavel, 'value': 4},
    {'name': 'Law', 'icon': Icons.medical_services, 'value': 5},
    {'name': 'Management', 'icon': Icons.admin_panel_settings, 'value': 6},
  ];
}
