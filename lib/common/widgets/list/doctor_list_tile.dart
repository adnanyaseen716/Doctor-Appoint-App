import 'package:flutter/material.dart';
import 'package:flutter_doctor_appointment_app/common/resposiveness.dart';
import 'package:flutter_doctor_appointment_app/models/doctor.dart';
import 'package:flutter_doctor_appointment_app/theme/theme.dart';

class DoctorListTile extends StatelessWidget {
  final Doctor doctor;

  const DoctorListTile({super.key, required this.doctor});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                CircleAvatar(
                  backgroundColor: Colors.grey,
                  radius: context.height * 0.05,
                  foregroundImage: NetworkImage(doctor.doctorImagePath),
                ),
                SizedBox(width: 16),
                //
                Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      doctor.doctorName,
                      style: TextStyle(
                        fontSize: ResponsiveTextSize().mediumFontSize(context),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 4),
                    Text(
                      '${doctor.doctorCategory} Specialist',
                      style: TextStyle(color: Colors.grey[600]),
                    ),
                    SizedBox(height: 5),
                    Row(
                      spacing: 2,
                      children: [
                        Icon(Icons.star, color: Colors.yellow, size: 16),
                        SizedBox(width: 4),
                        Text(
                          doctor.doctorRating.toString(),
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),

            //
            // Spacer(),///////////
            Column(
              spacing: 10,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      'Fees: ',
                      style: TextStyle(
                        fontSize: ResponsiveTextSize().mediumFontSize(context),
                        color: Colors.grey,
                      ),
                    ),
                    Text(
                      doctor.doctorFee,
                      style: TextStyle(
                        fontSize: ResponsiveTextSize().mediumFontSize(context),
                        color: AppThem.appMainColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),

                // book now button
                TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    backgroundColor: AppThem.appMainColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: Text(
                    'Book Now',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
