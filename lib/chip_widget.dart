import 'package:flutter/material.dart';

class ChipWidget extends StatelessWidget {
  final IconData icon;
  final String label;
  final int value;
  final Color backgroundColor;
  final Color borderColor;
  const ChipWidget({
    super.key,
    required this.icon,
    required this.label,
    required this.value,
    required this.backgroundColor,
    required this.borderColor
    });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 5,
        vertical: 2
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: backgroundColor.withAlpha(30),
        border: Border.all(
          color: borderColor
        )
      ),
      child: Row(
        children: [
          Icon(
           icon,
           color: backgroundColor,
           size: 18,
          ),
          SizedBox(width: 2,),
          Text(label),
          Text(value.toString(), style: TextStyle(
            fontWeight: .bold,
          ),),
        ],
      ),
    );
  }
}