import 'package:flutter/material.dart';
import 'package:flutter_doctor_appointment_app/models/doctor_category.dart';

class DoctorCategoryListTile extends StatelessWidget {
  const DoctorCategoryListTile({
    super.key,
    required this.isSelected,
    required this.onCategorySelected,
    required this.doctorCategory,
  });
  //
  final bool isSelected;
  final void Function(String) onCategorySelected;
  final DoctorCategory doctorCategory;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onCategorySelected(doctorCategory.categoryName);
      },
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        spacing: 10,
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: Container(
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                color: isSelected ? Colors.blue : Colors.grey,
                shape: BoxShape.circle,
              ),

              //
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: CircleAvatar(
                  backgroundColor: Colors.transparent,
                  foregroundImage: NetworkImage(doctorCategory.categoryIconUrl),
                ),
              ),
            ),
          ),

          //
          Text(doctorCategory.categoryName),
        ],
      ),

      //
    );
  }
}


// Container(
//         decoration: BoxDecoration(
//           color: isSelected ? Colors.blue : Colors.grey[300],
//           borderRadius: BorderRadius.circular(20),
//         ),
//         child: Text(
//           categoryName,
//           style: TextStyle(
//             color: isSelected ? Colors.white : Colors.black,
//             fontWeight: FontWeight.bold,
//           ),
//         ),
//       ),