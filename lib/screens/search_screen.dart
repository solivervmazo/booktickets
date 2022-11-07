import 'package:booktickets/screens/app_layout.dart';
import 'package:booktickets/utils/app_styles.dart';
import 'package:booktickets/widgets/double_text_widget.dart';
import 'package:booktickets/widgets/icon_text.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Styles.bgClolor,
      body: ListView(
        padding: EdgeInsets.symmetric(
          vertical: AppLayout.getHeight(20),
          horizontal: AppLayout.getWidth(20),
        ),
        children: [
          Gap(AppLayout.getHeight(40)),
          Text(
            "What are\nyou looking for?",
            style: Styles.headLineStyle1.copyWith(
              fontSize: AppLayout.getWidth(35),
            ),
          ),
          Gap(AppLayout.getHeight(20)),
          FittedBox(
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
                    child: const Center(
                      child: Text("Airline tickets"),
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
                    child: const Center(
                      child: Text("Hotels"),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Gap(AppLayout.getHeight(25)),
          const IconText(
            icon: Icons.flight_takeoff_rounded,
            text: "Departure",
          ),
          Gap(AppLayout.getHeight(15)),
          const IconText(
            icon: Icons.flight_land_rounded,
            text: "Arrival",
          ),
          Gap(AppLayout.getHeight(20)),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                AppLayout.getWidth(10),
              ),
              color: const Color(0xD91130CE),
            ),
            padding: EdgeInsets.symmetric(
              vertical: AppLayout.getHeight(18),
              horizontal: AppLayout.getWidth(18),
            ),
            child: Center(
              child: Text(
                "Find tickets",
                style: Styles.textStyle.copyWith(
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Gap(AppLayout.getHeight(40)),
          const DoubleTextWidget(bigText: "Upcomming flights"),
          Gap(AppLayout.getHeight(15)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    height: AppLayout.getHeight(400),
                    width: AppLayout.getHeight(size.width * 0.42),
                    padding: EdgeInsets.symmetric(
                      horizontal: AppLayout.getWidth(15),
                      vertical: AppLayout.getWidth(15),
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        AppLayout.getWidth(12),
                      ),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.shade200,
                          blurRadius: 1,
                          spreadRadius: 1,
                        ),
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: AppLayout.getHeight(190),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(
                              AppLayout.getWidth(12),
                            ),
                            image: const DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage("assets/images/sit.jpg"),
                            ),
                          ),
                        ),
                        Gap(AppLayout.getHeight(10)),
                        Text(
                          "20% discount ont the early booking of this flight. Don't miss this chance.",
                          style: Styles.headLineStyle2,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Stack(
                    children: [
                      Container(
                        height: AppLayout.getHeight(210),
                        width: AppLayout.getHeight(size.width * 0.44),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                            AppLayout.getWidth(12),
                          ),
                          color: const Color(0xFF3AB8B8),
                        ),
                        padding: EdgeInsets.symmetric(
                          vertical: AppLayout.getHeight(15),
                          horizontal: AppLayout.getWidth(16),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Discount\nfor survey",
                              style: Styles.headLineStyle2.copyWith(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Gap(AppLayout.getHeight(15)),
                            Text(
                              "Take the survey about our services and get discounts.",
                              style: Styles.headLineStyle2.copyWith(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        right: -45,
                        top: -40,
                        child: Container(
                          padding: EdgeInsets.all(
                            AppLayout.getHeight(30),
                          ),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              width: 18,
                              color: const Color(0xFF189999),
                            ),
                            color: Colors.transparent,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Gap(AppLayout.getHeight(10)),
                  Container(
                    height: AppLayout.getHeight(174),
                    width: AppLayout.getHeight(size.width * 0.44),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        AppLayout.getWidth(12),
                      ),
                      color: const Color(0xFFEC6545),
                    ),
                    padding: EdgeInsets.symmetric(
                      vertical: AppLayout.getHeight(15),
                      horizontal: AppLayout.getWidth(16),
                    ),
                    child: Column(
                      children: [
                        Text(
                          "Take love",
                          style: Styles.headLineStyle2.copyWith(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Gap(AppLayout.getHeight(15)),
                        RichText(
                          text: const TextSpan(
                            children: [
                              TextSpan(
                                text: '🥰',
                                style: TextStyle(fontSize: 28),
                              ),
                              TextSpan(
                                text: '🥰',
                                style: TextStyle(fontSize: 40),
                              ),
                              TextSpan(
                                text: '🥰',
                                style: TextStyle(fontSize: 28),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
