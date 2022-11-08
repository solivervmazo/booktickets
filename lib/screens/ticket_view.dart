import 'package:barcode_widget/barcode_widget.dart';
import 'package:booktickets/screens/app_layout.dart';
import 'package:booktickets/utils/app_styles.dart';
import 'package:booktickets/widgets/broken_line_widget.dart';
import 'package:booktickets/widgets/thick_container.dart';
import 'package:booktickets/widgets/ticket_detail_row_widget.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class TicketView extends StatelessWidget {
  final Map<String, dynamic> ticket;
  final bool? isColor;
  final bool isCompleteDetails;
  const TicketView({
    super.key,
    required this.ticket,
    this.isColor = true,
    this.isCompleteDetails = false,
  });

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return SizedBox(
      // height: AppLayout.getHeight(200),
      width: AppLayout.getWidth(size.width * 0.85),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(
              AppLayout.getWidth(21),
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.shade200,
                spreadRadius: 2,
                blurRadius: 1,
                blurStyle: BlurStyle.outer,
              ),
            ]),
        margin: EdgeInsets.only(
          right: AppLayout.getWidth(16),
        ),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                color: isColor! ? const Color(0xFF526799) : Colors.white,
                borderRadius: const BorderRadius.only(
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
                          color: isColor! ? Colors.white : Styles.textColor,
                        ),
                      ),
                      const Spacer(),
                      ThickContainer(
                        isColor: isColor,
                      ),
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
                                          child: DecoratedBox(
                                            decoration: BoxDecoration(
                                              color: isColor!
                                                  ? Colors.white
                                                  : Colors.blue.shade200,
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
                                  child: Icon(
                                    Icons.local_airport_rounded,
                                    color: isColor!
                                        ? Colors.white
                                        : Colors.blue.shade200,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      ThickContainer(
                        isColor: isColor,
                      ),
                      const Spacer(),
                      Text(
                        ticket['to']['code'],
                        style: Styles.headLineStyle3.copyWith(
                          color: isColor! ? Colors.white : Styles.textColor,
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
                            color:
                                isColor! ? Colors.white : Colors.grey.shade400,
                          ),
                        ),
                      ),
                      Text(
                        ticket['flying_time'],
                        style: Styles.headLineStyle4.copyWith(
                          color: isColor! ? Colors.white : Styles.textColor,
                        ),
                      ),
                      SizedBox(
                        width: AppLayout.getWidth(100),
                        child: Text(
                          ticket['to']['name'],
                          textAlign: TextAlign.end,
                          style: Styles.headLineStyle4.copyWith(
                            color:
                                isColor! ? Colors.white : Colors.grey.shade400,
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
              color: isColor! ? Styles.orangeColor : Colors.white,
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
                  BrokenLineWidget(isColor: isColor),
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
                color: isColor! ? Styles.orangeColor : Colors.white,
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
                              color: isColor! ? Colors.white : Styles.textColor,
                            ),
                          ),
                          const Gap(5),
                          Text(
                            "Date",
                            style: Styles.headLineStyle4.copyWith(
                              color: isColor!
                                  ? Colors.white
                                  : Colors.grey.shade400,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Text(
                            ticket['departure_time'],
                            style: Styles.headLineStyle3.copyWith(
                              color: isColor! ? Colors.white : Styles.textColor,
                            ),
                          ),
                          const Gap(5),
                          Text(
                            "Departure time",
                            style: Styles.headLineStyle4.copyWith(
                              color: isColor!
                                  ? Colors.white
                                  : Colors.grey.shade400,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Text(
                            textAlign: TextAlign.right,
                            ticket['number'].toString(),
                            style: Styles.headLineStyle3.copyWith(
                              color: isColor! ? Colors.white : Styles.textColor,
                            ),
                          ),
                          const Gap(5),
                          Text(
                            textAlign: TextAlign.right,
                            "Number",
                            style: Styles.headLineStyle4.copyWith(
                              color: isColor!
                                  ? Colors.white
                                  : Colors.grey.shade400,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  ...!isCompleteDetails
                      ? []
                      : [
                          TicketDetailRowWidget(
                            firstPartLabel: "Passenger",
                            firstPartValue: "Soliver Mazo",
                            secondPartLabel: "Passport",
                            secondPartValue: "0FD89 001317",
                            isColor: isColor,
                            isCompleteDetails: isCompleteDetails,
                          ),
                          TicketDetailRowWidget(
                            firstPartLabel: "E-ticket number",
                            firstPartValue: "10008889099988",
                            secondPartLabel: "Booking code",
                            secondPartValue: "FJ990",
                            isColor: isColor,
                            isCompleteDetails: isCompleteDetails,
                          ),
                          TicketDetailRowWidget(
                            firstPartLabel: "E-ticket number",
                            firstPartValue: "*** 3993",
                            firstPartWidget: Row(
                              children: [
                                Image.asset(
                                  "assets/images/visa.png",
                                  height: AppLayout.getHeight(15),
                                ),
                              ],
                            ),
                            secondPartLabel: "Price",
                            secondPartValue: "\$249.99",
                            isColor: isColor,
                            isCompleteDetails: isCompleteDetails,
                          ),
                          TicketDetailRowWidget(
                            body: Container(
                              padding: EdgeInsets.symmetric(
                                horizontal: AppLayout.getWidth(10),
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(
                                  10,
                                ),
                                child: BarcodeWidget(
                                  data: "10008889099988",
                                  barcode: Barcode.code128(),
                                  drawText: false,
                                  height: AppLayout.getHeight(60),
                                ),
                              ),
                            ),
                            firstPartLabel: "",
                            secondPartLabel: "",
                            isColor: isColor,
                            isCompleteDetails: isCompleteDetails,
                          )
                        ],
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
