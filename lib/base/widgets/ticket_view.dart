import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';
import 'package:ticket_app/base/widgets/app_layoutbuilder_widget.dart';
import 'package:ticket_app/base/widgets/big_circle.dart';
import 'package:ticket_app/base/widgets/big_dot.dart';

class TicketView extends StatelessWidget {
  const TicketView({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width * 0.85,
      height: 190,
      child: Container(
        margin: EdgeInsets.only(right: 16),
        child: Column(
          children: [
            // blue part of the ticket
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                  color: AppStyles.ticketBlue,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(21), topRight: Radius.circular(21))),
              child: Column(
                children: [
                  // show departure and destination with icons first line
                  Row(children: [
                    Text(
                      "NYC",
                      style: AppStyles.headLineStyle3.copyWith(color: Colors.white),
                    ),
                    Expanded(child: Container()),
                    const BigDot(),
                    Expanded(
                        child: Stack(
                      children: [
                        SizedBox(
                          height: 24,
                          child: AppLayoutBuilderWidget(
                            randomDivider: 6,
                          ),
                        ),
                        Center(
                          child: Transform.rotate(
                              angle: 1.5,
                              child: Icon(
                                Icons.local_airport_rounded,
                                color: Colors.white,
                              )),
                        )
                      ],
                    )),
                    const BigDot(),
                    Expanded(child: Container()),
                    Text(
                      "KTM",
                      style: AppStyles.headLineStyle3.copyWith(color: Colors.white),
                    ),
                  ]),
                  
                  const SizedBox(height: 3,),
                  // show departure and destination names with time
                  Row(children: [
                    Text(
                      "New-York",
                      style: AppStyles.headLineStyle3.copyWith(color: Colors.white),
                    ),
                    Expanded(child: Container()),
                    Text(
                      "8H 30M",
                      style: AppStyles.headLineStyle3.copyWith(color: Colors.white),),
                    Expanded(child: Container()),
                    Text(
                      "London",
                      style: AppStyles.headLineStyle3.copyWith(color: Colors.white),
                    ),
                  ]),
                
                ],
              ),
            ),
            // circle and dots
            Container(
              height: 20,
              color: AppStyles.ticketRed,
              child: Row(
                children: [
                  BigCircle(isRight: false,),
                  Expanded(child: AppLayoutBuilderWidget(randomDivider: 10, width: 6,)),
                  BigCircle(isRight: true,),
                ],
              ),
            ),
            // red part of the ticket
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                  color: AppStyles.ticketRed,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(21), bottomRight: Radius.circular(21))),
              child: Column(
                children: [
                  // show departure and destination with icons first line
                  Row(children: [
                    Text(
                      "1 MAY",
                      style: AppStyles.headLineStyle3.copyWith(color: Colors.white),
                    ),
                    Expanded(child: Container()),
                    Text(
                      "08:00 AM",
                      style: AppStyles.headLineStyle3.copyWith(color: Colors.white),
                    ),
                    Expanded(child: Container()),
                    Text(
                      "23",
                      style: AppStyles.headLineStyle3.copyWith(color: Colors.white),
                    ),
                  ]),
                  
                  const SizedBox(height: 3,),
                  // show departure and destination names with time
                  Row(children: [
                    Text(
                      "Date",
                      style: AppStyles.headLineStyle3.copyWith(color: Colors.white),
                    ),
                    Expanded(child: Container()),
                    Text(
                      "Departure time",
                      style: AppStyles.headLineStyle3.copyWith(color: Colors.white),),
                    Expanded(child: Container()),
                    Text(
                      "Number",
                      style: AppStyles.headLineStyle3.copyWith(color: Colors.white),
                    ),
                  ]),
                
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}
