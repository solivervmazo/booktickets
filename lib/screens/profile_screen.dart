import 'package:booktickets/screens/app_layout.dart';
import 'package:booktickets/utils/app_styles.dart';
import 'package:booktickets/widgets/double_text_widget.dart';
import 'package:booktickets/widgets/stacked_card_widget.dart';
import 'package:booktickets/widgets/thick_container.dart';
import 'package:booktickets/widgets/ticket_detail_row_widget.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgClolor,
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(
            horizontal: AppLayout.getWidth(25),
            vertical: AppLayout.getHeight(20),
          ),
          children: [
            Row(
              children: [
                Container(
                  width: AppLayout.getWidth(80),
                  height: AppLayout.getHeight(80),
                  decoration: BoxDecoration(
                      image: const DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage("assets/images/img_1.png"),
                      ),
                      borderRadius: BorderRadius.circular(
                        20,
                      ),
                      color: Colors.white),
                ),
                Gap(AppLayout.getWidth(15)),
                Expanded(
                  child: Container(
                    height: AppLayout.getHeight(80),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const DoubleTextWidget(
                          bigText: "Book Tickets",
                          smallText: "Edit",
                        ),
                        Text(
                          "New-york",
                          style: Styles.headLineStyle4,
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: AppLayout.getWidth(10),
                            vertical: AppLayout.getHeight(8),
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.white,
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              ThickContainer(
                                color: Colors.deepPurple.shade500,
                              ),
                              Gap(AppLayout.getWidth(3)),
                              Text(
                                "Premium status",
                                style: Styles.headLineStyle4.copyWith(
                                  color: Colors.deepPurple.shade500,
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Gap(AppLayout.getHeight(25)),
            Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                StackedCardWidget(
                  circleHeight: 25,
                  height: 70,
                  color: Colors.deepPurpleAccent,
                  circleColor: Colors.deepPurpleAccent.shade700,
                  body: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Column(
                        children: const [
                          CircleAvatar(
                            backgroundColor: Colors.white,
                            child: Icon(
                              FluentSystemIcons
                                  .ic_fluent_lightbulb_filament_filled,
                              color: Colors.deepPurpleAccent,
                            ),
                          ),
                        ],
                      ),
                      Gap(AppLayout.getWidth(10)),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "You've got new reward",
                            style: Styles.headLineStyle3.copyWith(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "You hae 150 flights this year.",
                            style: Styles.headLineStyle4.copyWith(
                              color: Colors.white,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
            Gap(AppLayout.getHeight(25)),
            const DoubleTextWidget(
              bigText: "Accumulated miles",
              smallText: "",
            ),
            Gap(AppLayout.getHeight(35)),
            Text(
              "192802",
              textAlign: TextAlign.center,
              style: Styles.headLineStyle1.copyWith(
                fontSize: 45,
              ),
            ),
            Gap(AppLayout.getHeight(20)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Miles accrued",
                  style: Styles.headLineStyle4.copyWith(
                    color: Colors.grey.shade500,
                    fontSize: 14,
                  ),
                ),
                Text(
                  "23 May 2021",
                  style: Styles.headLineStyle4.copyWith(
                    color: Colors.grey.shade500,
                    fontSize: 14,
                  ),
                )
              ],
            ),
            Gap(AppLayout.getHeight(20)),
            Column(
              children: const [
                TicketDetailRowWidget(
                  isColor: false,
                  isCompleteDetails: false,
                  firstPartLabel: "miles",
                  firstPartValue: "23 042",
                  secondPartLabel: "Received from",
                  secondPartValue: "Airline CO",
                  hasSeparator: false,
                ),
              ],
            ),
            Gap(AppLayout.getHeight(20)),
            Column(
              children: const [
                TicketDetailRowWidget(
                  isColor: false,
                  isCompleteDetails: false,
                  firstPartLabel: "miles",
                  firstPartValue: "23",
                  secondPartLabel: "Received from",
                  secondPartValue: "McDo's",
                  hasSeparator: false,
                ),
              ],
            ),
            Gap(AppLayout.getHeight(20)),
            Column(
              children: const [
                TicketDetailRowWidget(
                  isColor: false,
                  isCompleteDetails: false,
                  firstPartLabel: "miles",
                  firstPartValue: "30 899",
                  secondPartLabel: "Received from",
                  secondPartValue: "Verma Co.",
                  hasSeparator: false,
                ),
              ],
            ),
            Gap(AppLayout.getHeight(20)),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {},
                  child: Text(
                    "How to get more miles",
                    style: Styles.headLineStyle4.copyWith(
                      color: Styles.primaryColor,
                      fontSize: 15,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
