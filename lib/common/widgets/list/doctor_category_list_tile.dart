import 'package:flutter/material.dart';
import 'package:flutter_doctor_appointment_app/models/doctor_category.dart';

class DoctorCategoryListTile extends StatelessWidget {
  const DoctorCategoryListTile({
    super.key,
    // required this.category,
    required this.isSelected,
    required this.onCategorySelected,
    required this.categoryName,
  });
  //
  // final DoctorCategory category;
  final bool isSelected;
  final void Function(String) onCategorySelected;
  final String categoryName;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onCategorySelected(categoryName),
      child: Container(
        margin: EdgeInsets.only(right: 10),
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
        decoration: BoxDecoration(
          color: isSelected ? Colors.blue : Colors.grey[300],
          borderRadius: BorderRadius.circular(20),
        ),
        child: Text(
          categoryName,
          style: TextStyle(
            color: isSelected ? Colors.white : Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
