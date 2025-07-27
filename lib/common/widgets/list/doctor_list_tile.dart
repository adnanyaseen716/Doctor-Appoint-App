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
      margin: EdgeInsets.all(15),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Row(
          // mainAxisAlignment: MainAxisAlignment.start,
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Container(
            //   margin: EdgeInsets.all(8.0),
            //   width: 60,
            //   height: 60,
            //   decoration: BoxDecoration(
            //     color: Colors.grey,

            //     shape: BoxShape.circle,
            //     image: DecorationImage(
            //       image: NetworkImage(doctor.doctorImagePath),
            //       fit: BoxFit.cover,
            //     ),
            //   ),
            // ),
            CircleAvatar(
              backgroundColor: Colors.grey,
              radius: context.height * 0.06,
              foregroundImage: NetworkImage(doctor.doctorImagePath),
            ),
            SizedBox(width: 16),
            //
            Column(
              mainAxisSize: MainAxisSize.min,
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
                Row(
                  children: [
                    Icon(Icons.star, color: Colors.yellow, size: 16),
                    SizedBox(width: 4),
                    Text(
                      doctor.doctorRating.toString(),
                      style: TextStyle(color: Colors.grey[600]),
                    ),
                  ],
                ),
              ],
            ),

            //
            Spacer(),
            Column(
              spacing: 10,
              children: [
                Row(
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



// Card(
//       margin: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
//       child: ListTile(
//         leading: Icon(Icons.person),
//         title: Text(doctor.name),
//         subtitle: Text('${doctor.category} Specialist'),
//         trailing: Icon(Icons.chevron_right),
//       ),
//     );