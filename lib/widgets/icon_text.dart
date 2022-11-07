import 'package:booktickets/screens/app_layout.dart';
import 'package:booktickets/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class IconText extends StatelessWidget {
  final IconData icon;
  final String text;
  const IconText({
    Key? key,
    required this.icon,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          AppLayout.getWidth(10),
        ),
        color: Colors.white,
      ),
      padding: EdgeInsets.symmetric(
        vertical: AppLayout.getHeight(12),
        horizontal: AppLayout.getWidth(12),
      ),
      child: Row(
        children: [
          Icon(
            icon,
            color: const Color(
              0xFFBFC2DF,
            ),
          ),
          Gap(AppLayout.getWidth(10)),
          Text(
            text,
            style: Styles.textStyle,
          ),
        ],
      ),
    );
  }
}
