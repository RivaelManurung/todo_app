import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:todoapp/constant/app_style.dart';

class DateTime extends StatelessWidget {
  const DateTime({
    super.key,
    required this.titleText,
    required this.valueText,
    required this.icon,
  });

  final String titleText;
  final String valueText;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
           Text(
            titleText,
            style: AppStyle.headingOne,
          ),
          Gap(6),
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 12,
              vertical: 12,
            ),
            decoration: BoxDecoration(
              color: Colors.grey.shade200,
              borderRadius: BorderRadius.circular(16),
            ),
            child: Row(
              children:  [
                Icon(icon),
                Gap(12),
                Text(valueText),
              ],
            ),
          )
        ],
      ),
    );
  }
}
