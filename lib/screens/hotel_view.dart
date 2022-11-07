import 'package:booktickets/screens/app_layout.dart';
import 'package:booktickets/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class HotelView extends StatelessWidget {
  final Map<String, dynamic> hotelInfo;
  const HotelView({super.key, required this.hotelInfo});

  @override
  Widget build(BuildContext context) {
    final _size = AppLayout.getSize(context);
    return Container(
      height: 350,
      width: _size.width * 0.6,
      padding: const EdgeInsets.symmetric(
        horizontal: 15,
        vertical: 17,
      ),
      margin: const EdgeInsets.only(
        right: 17,
      ),
      decoration: BoxDecoration(
        color: Styles.primaryColor,
        borderRadius: BorderRadius.circular(24),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade200,
            blurRadius: 20,
            spreadRadius: 5,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 180,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Styles.primaryColor,
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage("assets/images/${hotelInfo['image']}"),
              ),
            ),
          ),
          const Gap(10),
          Text(
            hotelInfo['place'],
            style: Styles.headLineStyle2.copyWith(
              color: Styles.kakiColor,
            ),
          ),
          const Gap(5),
          Text(
            hotelInfo['destination'],
            style: Styles.headLineStyle3.copyWith(
              color: Colors.white,
            ),
          ),
          const Gap(8),
          Text(
            "\$${hotelInfo['price']}/night",
            style: Styles.headLineStyle1.copyWith(
              color: Styles.kakiColor,
            ),
          ),
        ],
      ),
    );
  }
}
