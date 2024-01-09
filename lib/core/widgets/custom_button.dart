// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:bmi_calculator/constansts.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    Key? key,
    required this.onTap,
    required this.label,
  }) : super(key: key);

  final VoidCallback onTap;
  final String label;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onTap,
      minWidth: double.infinity,
      height: 50,
      color: redColor,
      child: Text(
        label,
        style: const TextStyle(fontSize: 15),
      ),
    );
  }
}
