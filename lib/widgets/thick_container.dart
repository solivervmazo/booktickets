import 'package:flutter/material.dart';

class ThickContainer extends StatelessWidget {
  final bool? isColor;
  final Color? color;
  final double? size;
  const ThickContainer({super.key, this.isColor = true, this.color, this.size});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(3),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          width: size ?? 2.5,
          color: color ?? (isColor! ? Colors.white : Colors.blue.shade200),
        ),
      ),
    );
  }
}
