import 'package:booktickets/screens/app_layout.dart';
import 'package:booktickets/utils/app_styles.dart';
import 'package:booktickets/widgets/broken_line_widget.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class TicketDetailRowWidget extends StatelessWidget {
  const TicketDetailRowWidget({
    super.key,
    this.isColor,
    this.isCompleteDetails,
    required this.firstPartLabel,
    required this.secondPartLabel,
    this.firstPartValue,
    this.secondPartValue,
    this.firstPartWidget,
    this.secondPartWidget,
    this.body,
    this.hasSeparator = true,
  });

  final String firstPartLabel;
  final String secondPartLabel;
  final String? firstPartValue;
  final String? secondPartValue;
  final Widget? firstPartWidget;
  final Widget? secondPartWidget;
  final bool? isColor;
  final bool? isCompleteDetails;
  final Widget? body;
  final bool hasSeparator;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ...(hasSeparator
            ? [
                Gap(AppLayout.getHeight(15)),
                Row(
                  children: [
                    BrokenLineWidget(
                      isColor: isColor,
                      color: isCompleteDetails! ? Colors.grey.shade300 : null,
                    ),
                  ],
                ),
                Gap(AppLayout.getHeight(15))
              ]
            : []),
        body ??
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        firstPartWidget ?? Container(),
                        Text(
                          firstPartValue ?? "",
                          style: Styles.headLineStyle3.copyWith(
                            color: isColor! ? Colors.white : Styles.textColor,
                          ),
                        ),
                      ],
                    ),
                    const Gap(5),
                    Text(
                      firstPartLabel,
                      style: Styles.headLineStyle4.copyWith(
                        color: isColor! ? Colors.white : Colors.grey.shade400,
                      ),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    secondPartWidget ??
                        Text(
                          textAlign: TextAlign.right,
                          secondPartValue ?? "",
                          style: Styles.headLineStyle3.copyWith(
                            color: isColor! ? Colors.white : Styles.textColor,
                          ),
                        ),
                    const Gap(5),
                    Text(
                      textAlign: TextAlign.right,
                      secondPartLabel,
                      style: Styles.headLineStyle4.copyWith(
                        color: isColor! ? Colors.white : Colors.grey.shade400,
                      ),
                    ),
                  ],
                ),
              ],
            ),
      ],
    );
  }
}
