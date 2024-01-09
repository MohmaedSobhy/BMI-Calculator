import 'package:flutter/material.dart';

// ignore: must_be_immutable
class GenderCard extends StatelessWidget {
  GenderCard(
      {super.key,
      required this.background,
      required this.label,
      required this.icon,
      required this.ontap});

  Color background;
  String label;
  IconData icon;
  VoidCallback ontap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Padding(
        padding:
            const EdgeInsets.only(left: 20.0, right: 20.0, top: 20, bottom: 20),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: background,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                icon,
                size: 100,
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                label,
                style: const TextStyle(fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
      ),
    );
  }
}
