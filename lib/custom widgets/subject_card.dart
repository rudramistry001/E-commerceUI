import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SubjectCard extends StatelessWidget {
  final String subject;

  final Color color;

  const SubjectCard({super.key, required this.subject, required this.color});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: color,
      margin: const EdgeInsets.all(10.0),
      child: Container(
        padding: const EdgeInsets.all(10.0),
        width: 150, // Set as needed
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const SizedBox(height: 10.0),
            Text(
              subject,
              style: TextStyle(
                  fontSize: 18.0.sp,
                  color: Colors.white,
                  fontWeight: FontWeight.w800),
            ),
          ],
        ),
      ),
    );
  }
}
