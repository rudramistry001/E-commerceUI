import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomStyledTextField extends StatelessWidget {
  final String? hintText;
  final String? labelText;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  const CustomStyledTextField({
    super.key,
    this.hintText,
    this.labelText,
    this.prefixIcon,
    this.suffixIcon,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        fillColor: Colors.lightBlueAccent, // Light blue fill color
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(
              color: Colors.lightBlueAccent), // Light blue border color
        ),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(
              color: Colors
                  .lightBlueAccent), // Light blue border color when focused
        ),
        prefixIcon: prefixIcon,
        labelText: labelText,
        labelStyle: TextStyle(
          color: Colors.blue, // Blue label text color
          fontWeight: FontWeight.w200,
          fontSize: 16.sp, // Font weight 500 for label text
        ),
        hintText: hintText,
        hintStyle: TextStyle(
          color: Colors.blue, // Blue hint text color
          fontWeight: FontWeight.w200,
          fontSize: 16.sp, // Font weight 500 for hint text
        ),
        suffixIcon: suffixIcon,
      ),
    );
  }
}
