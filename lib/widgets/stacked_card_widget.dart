import 'package:booktickets/screens/app_layout.dart';
import 'package:flutter/material.dart';

class StackedCardWidget extends StatelessWidget {
  const StackedCardWidget({
    super.key,
    required this.body,
    this.color = const Color(0xFF3AB8B8),
    this.circleColor = const Color(0xFF189999),
    this.height,
    this.width,
    this.circleHeight = 30,
  });
  final double? height;
  final double? width;
  final Widget body;
  final Color color;
  final Color circleColor;
  final double circleHeight;
  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Column(
      children: [
        Container(
          height: AppLayout.getHeight(height ?? size.height),
          width: AppLayout.getWidth(width ?? size.width),
          child: Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    AppLayout.getWidth(12),
                  ),
                  color: color,
                ),
              ),
              Positioned(
                right: -45,
                top: -40,
                child: Container(
                  padding: EdgeInsets.all(
                    AppLayout.getHeight(circleHeight),
                  ),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      width: circleHeight / 2,
                      color: circleColor,
                    ),
                    color: Colors.transparent,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(
                  vertical: AppLayout.getHeight(15),
                  horizontal: AppLayout.getWidth(16),
                ),
                height: height,
                width: width,
                child: body,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
