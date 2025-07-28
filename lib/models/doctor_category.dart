import 'package:flutter/material.dart';
import 'package:flutter_doctor_appointment_app/common/assets.dart';

class DoctorCategory {
  final String categoryName;
  final String categoryIconUrl;
  static List<DoctorCategory> categories = [
    DoctorCategory(categoryName: 'Brain', categoryIconUrl: Assets.brain),
    DoctorCategory(categoryName: 'Heart', categoryIconUrl: Assets.heart),
    DoctorCategory(categoryName: 'Skin', categoryIconUrl: Assets.skin),
    DoctorCategory(categoryName: 'Eye', categoryIconUrl: Assets.eye),
    DoctorCategory(categoryName: 'Bones', categoryIconUrl: Assets.bone),
  ];

  DoctorCategory({
    required this.categoryName,
    this.categoryIconUrl = Assets.doctor,
  });
}
