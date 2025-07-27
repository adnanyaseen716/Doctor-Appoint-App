import 'package:flutter/foundation.dart';
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
    return Container(
      height: 50,
      padding: EdgeInsets.symmetric(horizontal: 12),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) {
          String category = categories[index].name;
          bool isSelected = category == selectedCategory;

          return DoctorCategoryListTile(
            isSelected: isSelected,
            onCategorySelected: onCategorySelected,
            categoryName: category,
          );
        },
      ),
    );
  }
}
