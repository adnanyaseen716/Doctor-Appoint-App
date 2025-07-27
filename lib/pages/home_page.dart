import 'package:flutter/material.dart';
import 'package:flutter_doctor_appointment_app/models/doctor.dart';
import 'package:flutter_doctor_appointment_app/models/doctor_category.dart';
import 'package:flutter_doctor_appointment_app/common/widgets/list/doctor_category_list_tile.dart';
import 'package:flutter_doctor_appointment_app/common/widgets/list/doctor_category_list_view.dart';
import 'package:flutter_doctor_appointment_app/common/widgets/list/doctor_list_tile.dart';
import 'package:flutter_doctor_appointment_app/common/widgets/list/doctor_list_view.dart';
import 'package:flutter_doctor_appointment_app/theme/theme.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.title});

  final String title;

  @override
  State<HomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.start,
          children: [
            CustomHomeAppBar(),

            // Expanded(child: DoctorCategoryScreen()),
            //
            //
            Text('Categories'),
            Expanded(child: DoctorsListByCategory()),
          ],
        ),
      ),
    );
  }
}

class CategoriesList extends StatelessWidget {
  const CategoriesList({super.key});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

// Custom AppBar for Home Page

class CustomHomeAppBar extends StatelessWidget {
  const CustomHomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    var url =
        'https://media.istockphoto.com/id/1285124274/photo/middle-age-man-portrait.jpg?s=612x612&w=0&k=20&c=D14m64UChVZyRhAr6MJW3guo7MKQbKvgNVdKmsgQ_1g=';
    return Row(
      spacing: 10,
      children: [
        //
        CircleAvatar(foregroundImage: NetworkImage(url), radius: 30),
        Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('Hi!                        '),
            Text(
              'Mr. Adnan',
              style: Theme.of(
                context,
              ).textTheme.headlineSmall?.copyWith(fontWeight: FontWeight.bold),
            ),
          ],
        ),

        //
        const Spacer(),
        IconButton.outlined(
          onPressed: () {},
          icon: const Icon(Icons.search, color: AppThem.appMainColor),
          style: IconButton.styleFrom(
            side: BorderSide(color: AppThem.greyColor),
          ),
        ),
        IconButton.outlined(
          onPressed: () {},
          icon: const Icon(Icons.notifications, color: AppThem.appMainColor),
          style: IconButton.styleFrom(
            side: BorderSide(color: AppThem.greyColor),
          ),
        ),
      ],
    );
  }
}

//

class DoctorsListByCategory extends StatefulWidget {
  const DoctorsListByCategory({super.key});

  @override
  State<DoctorsListByCategory> createState() => _DoctorCategoryScreenState();
}

class _DoctorCategoryScreenState extends State<DoctorsListByCategory> {
  String selectedCategory = 'Brain';

  @override
  Widget build(BuildContext context) {
    List<Doctor> filteredDoctors = Doctor.allDoctors
        .where((doctor) => doctor.doctorCategory == selectedCategory)
        .toList();

    return Column(
      children: [
        SizedBox(height: 10),
        DoctorCategoryListView(
          categories: DoctorCategory.categories,
          selectedCategory: selectedCategory,
          onCategorySelected: (category) {
            setState(() {
              selectedCategory = category;
            });
          },
        ),
        SizedBox(height: 10),
        Text('Doctors'),
        Expanded(child: DoctorListView(filteredDoctors: filteredDoctors)),
      ],
    );
  }
}
