import 'package:booktickets/screens/app_layout.dart';
import 'package:flutter/material.dart';

class AppTicketsTabWidget extends StatelessWidget {
  const AppTicketsTabWidget({
    Key? key,
    required this.size,
    required this.firstTab,
    required this.secondTab,
  }) : super(key: key);

  final String firstTab;
  final String secondTab;
  final Size size;

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: Container(
        padding: const EdgeInsets.all(3.5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            AppLayout.getWidth(50),
          ),
          color: const Color(0xFFF4F6FD),
        ),
        child: Row(
          children: [
            Container(
              width: AppLayout.getWidth(size.width * 0.44),
              padding: EdgeInsets.symmetric(
                vertical: AppLayout.getHeight(7),
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.horizontal(
                  left: Radius.circular(
                    AppLayout.getHeight(50),
                  ),
                ),
                color: Colors.white,
              ),
              child: Center(
                child: Text(firstTab),
              ),
            ),
            Container(
              width: AppLayout.getWidth(size.width * 0.44),
              padding: EdgeInsets.symmetric(
                vertical: AppLayout.getHeight(7),
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.horizontal(
                  right: Radius.circular(
                    AppLayout.getHeight(50),
                  ),
                ),
                color: Colors.transparent,
              ),
              child: Center(
                child: Text(secondTab),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
