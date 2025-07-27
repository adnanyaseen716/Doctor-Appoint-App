import 'package:flutter/material.dart';

class DoctorCategory {
  final String categoryName;
  final String categoryIconUrl;
  static List<DoctorCategory> categories = [
    DoctorCategory(categoryName: 'Brain'),
    DoctorCategory(categoryName: 'Heart'),
    DoctorCategory(categoryName: 'Skin'),
    DoctorCategory(categoryName: 'Eye'),
    DoctorCategory(categoryName: 'Bones'),
  ];

  DoctorCategory({
    required this.categoryName,
    this.categoryIconUrl =
        'https://img.icons8.com/?size=60&id=60687&format=png',
  });
}
