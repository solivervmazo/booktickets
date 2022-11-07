import 'package:booktickets/screens/app_layout.dart';
import 'package:booktickets/utils/app_styles.dart';
import 'package:booktickets/widgets/thick_container.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class TicketView extends StatelessWidget {
  final Map<String, dynamic> ticket;
  const TicketView({super.key, required this.ticket});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return SizedBox(
      height: AppLayout.getHeight(200),
      width: AppLayout.getWidth(size.width * 0.85),
      child: Container(
        margin: EdgeInsets.only(right: AppLayout.getWidth(16)),
        child: Column(
          children: [
            Container(
              decoration: const BoxDecoration(
                color: Color(0xFF526799),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(21),
                  topRight: Radius.circular(21),
                ),
              ),
              padding: EdgeInsets.symmetric(
                vertical: AppLayout.getHeight(16),
                horizontal: AppLayout.getWidth(16),
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        ticket['from']['code'],
                        style: Styles.headLineStyle3.copyWith(
                          color: Colors.white,
                        ),
                      ),
                      const Spacer(),
                      const ThickContainer(),
                      Expanded(
                        child: Container(
                          child: Stack(
                            children: [
                              SizedBox(
                                height: AppLayout.getHeight(24),
                                child: LayoutBuilder(
                                  builder: (BuildContext context,
                                      BoxConstraints constraints) {
                                    return Flex(
                                      direction: Axis.horizontal,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      mainAxisSize: MainAxisSize.max,
                                      children: List.generate(
                                        (constraints.constrainWidth() / 6)
                                            .floor(),
                                        (index) => SizedBox(
                                          height: AppLayout.getHeight(1),
                                          width: AppLayout.getWidth(3),
                                          child: const DecoratedBox(
                                            decoration: BoxDecoration(
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                      ),
                                    );
                                  },
                                ),
                              ),
                              Center(
                                child: Transform.rotate(
                                  angle: 1.5,
                                  child: const Icon(
                                    Icons.local_airport_rounded,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const ThickContainer(),
                      const Spacer(),
                      Text(
                        ticket['to']['code'],
                        style: Styles.headLineStyle3.copyWith(
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: AppLayout.getWidth(100),
                        child: Text(
                          ticket['from']['name'],
                          style: Styles.headLineStyle4.copyWith(
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Text(
                        ticket['flying_time'],
                        style: Styles.headLineStyle4.copyWith(
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        width: AppLayout.getWidth(100),
                        child: Text(
                          ticket['to']['name'],
                          textAlign: TextAlign.end,
                          style: Styles.headLineStyle4.copyWith(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const Gap(5),
                ],
              ),
            ),
            Container(
              color: Styles.orangeColor,
              child: Row(
                children: [
                  SizedBox(
                    height: AppLayout.getHeight(20),
                    width: AppLayout.getWidth(10),
                    child: const DecoratedBox(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(10),
                          bottomRight: Radius.circular(10),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
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
                              child: const DecoratedBox(
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: AppLayout.getHeight(20),
                    width: AppLayout.getWidth(10),
                    child: const DecoratedBox(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          bottomLeft: Radius.circular(10),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: Styles.orangeColor,
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(21),
                  bottomRight: Radius.circular(21),
                ),
              ),
              padding: EdgeInsets.only(
                top: AppLayout.getHeight(10),
                left: AppLayout.getWidth(16),
                right: AppLayout.getWidth(16),
                bottom: AppLayout.getHeight(16),
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            ticket['date'],
                            style: Styles.headLineStyle3.copyWith(
                              color: Colors.white,
                            ),
                          ),
                          const Gap(5),
                          Text(
                            "Date",
                            style: Styles.headLineStyle4.copyWith(
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Text(
                            ticket['departure_time'],
                            style: Styles.headLineStyle3.copyWith(
                              color: Colors.white,
                            ),
                          ),
                          const Gap(5),
                          Text(
                            "Departure time",
                            style: Styles.headLineStyle4.copyWith(
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            textAlign: TextAlign.right,
                            ticket['number'].toString(),
                            style: Styles.headLineStyle3.copyWith(
                              color: Colors.white,
                            ),
                          ),
                          const Gap(5),
                          Text(
                            textAlign: TextAlign.right,
                            "Number",
                            style: Styles.headLineStyle4.copyWith(
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
