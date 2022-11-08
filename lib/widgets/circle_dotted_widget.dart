import 'package:booktickets/utils/app_styles.dart';
import 'package:flutter/material.dart';

class CircleDottedWidget extends StatelessWidget {
  const CircleDottedWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(3),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: Styles.textColor,
          width: 2,
        ),
      ),
      child: CircleAvatar(
        maxRadius: 4,
        backgroundColor: Styles.textColor,
      ),
    );
  }
}
