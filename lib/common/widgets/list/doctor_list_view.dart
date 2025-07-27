import 'package:flutter/material.dart';
import 'package:flutter_doctor_appointment_app/common/widgets/list/doctor_list_tile.dart';
import 'package:flutter_doctor_appointment_app/models/doctor.dart';

class DoctorListView extends StatelessWidget {
  const DoctorListView({super.key, required this.filteredDoctors});

  final List<Doctor> filteredDoctors;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: filteredDoctors.length,
      itemBuilder: (context, index) {
        return DoctorListTile(doctor: filteredDoctors[index]);
      },
    );
  }
}
