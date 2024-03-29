import 'package:bmi_calculator/core/colors/app_color.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomeCard extends StatelessWidget {
  CustomeCard(
      {super.key,
      required this.label,
      required this.txtDigite,
      required this.tapIncrease,
      required this.tapDecrease});
  String label;
  String txtDigite;
  VoidCallback tapIncrease;
  VoidCallback tapDecrease;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.inActiveCardColour,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Text(
          label,
          style: TextStyle(
            fontSize: 25.0,
            color: Color(0xFF8D8E98),
          ),
        ),
        Text(
          txtDigite,
          style: const TextStyle(
              color: Colors.grey, fontSize: 25, fontWeight: FontWeight.bold),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FloatingActionButton(
              onPressed: tapIncrease,
              mini: true,
              backgroundColor: AppColors.activeCardColour,
              child: const Icon(
                Icons.add,
                color: Colors.white,
              ),
            ),
            FloatingActionButton(
              onPressed: tapDecrease,
              backgroundColor: AppColors.activeCardColour,
              mini: true,
              child: const Icon(
                Icons.remove,
                color: Colors.white,
              ),
            ),
          ],
        )
      ]),
    );
  }
}
