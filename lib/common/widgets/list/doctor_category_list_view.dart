import 'package:flutter/material.dart';
import 'package:flutter_doctor_appointment_app/models/doctor_category.dart';
import 'package:flutter_doctor_appointment_app/common/widgets/list/doctor_category_list_tile.dart';

class DoctorCategoryListView extends StatelessWidget {
  const DoctorCategoryListView({
    super.key,
    required this.categories,
    required this.selectedCategory,
    required this.onCategorySelected,
  });

  final List<DoctorCategory> categories;
  final String selectedCategory;
  final Function(String) onCategorySelected;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) {
          String category = categories[index].categoryName;
          bool isSelected = category == selectedCategory;

          return DoctorCategoryListTile(
            doctorCategory: categories[index],
            isSelected: isSelected,
            onCategorySelected: onCategorySelected,
          );
        },
      ),
    );
  }
}
