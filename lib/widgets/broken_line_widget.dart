import 'package:booktickets/screens/app_layout.dart';
import 'package:booktickets/utils/app_styles.dart';
import 'package:flutter/material.dart';

class BrokenLineWidget extends StatelessWidget {
  const BrokenLineWidget({
    Key? key,
    this.isColor = false,
    this.color,
  }) : super(key: key);

  final bool? isColor;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: LayoutBuilder(
          builder: (p0, BoxConstraints constraints) => Flex(
            direction: Axis.horizontal,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.max,
            children: List.generate(
              (constraints.constrainWidth() / 15).floor(),
              (index) => SizedBox(
                width: AppLayout.getHeight(5),
                height: AppLayout.getHeight(1),
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    color:
                        color ?? (isColor! ? Colors.white : Styles.textColor),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
