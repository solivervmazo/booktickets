import 'package:booktickets/screens/app_layout.dart';
import 'package:booktickets/screens/ticket_view.dart';
import 'package:booktickets/utils/app_info_list.dart';
import 'package:booktickets/utils/app_styles.dart';
import 'package:booktickets/widgets/app_tickes_tab_widget.dart';
import 'package:booktickets/widgets/circle_dotted_widget.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Styles.bgClolor,
      body: SafeArea(
        child: Stack(
          children: [
            ListView(
              padding: EdgeInsets.symmetric(
                horizontal: AppLayout.getWidth(20),
                vertical: AppLayout.getHeight(20),
              ),
              children: [
                Text(
                  "Tickets",
                  style: Styles.headLineStyle1,
                ),
                Gap(AppLayout.getHeight(20)),
                AppTicketsTabWidget(
                  size: size,
                  firstTab: "Upcomming",
                  secondTab: "Previous",
                ),
                Gap(AppLayout.getHeight(20)),
                Padding(
                  padding: const EdgeInsets.only(left: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      TicketView(
                        ticket: ticketList[0],
                        isColor: false,
                        isCompleteDetails: true,
                      ),
                      Gap(AppLayout.getHeight(20)),
                      TicketView(
                        ticket: ticketList[0],
                      )
                    ],
                  ),
                ),
              ],
            ),
            Positioned(
              left: 0,
              top: 295,
              child: Container(
                padding: EdgeInsets.symmetric(
                  horizontal: AppLayout.getWidth(28),
                ),
                width: size.width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    CircleDottedWidget(),
                    CircleDottedWidget(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
