import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticket_booking_app/utils/app_layout.dart';
import 'package:ticket_booking_app/utils/app_styles.dart';
import 'package:ticket_booking_app/widgets/container_cus_1.dart';

class TicketView extends StatelessWidget {
  const TicketView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);

    return SizedBox(
      width: size.width,
      height: 200,
      child: Container(
        margin: const EdgeInsets.only(left: 16),
        child: Column(
          children: [
            /*
            show the blue part of the card/ticket
            */
            Container(
              decoration: const BoxDecoration(
                  color: Color(0xFF526799),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(21),
                      topRight: Radius.circular(21))),
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text('STGO',
                          style: Styles.headLineStyle3
                              .copyWith(color: Colors.white)),
                      Expanded(child: Container()),
                      ContainerCus1(),
                      Expanded(
                        child: Stack(
                          children: [
                            SizedBox(
                              height: 24,
                              child: LayoutBuilder(
                                builder: (BuildContext context,
                                    BoxConstraints contraints) {
                                  if (kDebugMode) {
                                    print("The width is ${contraints.maxWidth}");
                                  }
                                  return Flex(
                                    direction: Axis.horizontal,
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: List.generate(
                                      (contraints.maxWidth ~/ 6).floor(),
                                          (index) => const SizedBox(
                                        width: 3,
                                        height: 1,
                                        child: DecoratedBox(
                                            decoration:
                                            BoxDecoration(color: Colors.white)),
                                      ),
                                    ),
                                  );
                                },
                              ),
                            ),
                            const Center(
                              child: Icon(FluentSystemIcons.ic_fluent_airplane_filled,
                                  color: Colors.white),
                            ),
                          ] ,
                        ),
                      ),
                      ContainerCus1(),
                      Expanded(child: Container()),
                      Text('ROMA',
                          style: Styles.headLineStyle3
                              .copyWith(color: Colors.white))
                    ],
                  ),
                  const Gap(3),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 100,
                        child: Text('Santiago', style: Styles.headLineStyle4.copyWith(color: Colors.white)),
                      ),
                      Text("12H 30M", style: Styles.headLineStyle4.copyWith(color: Colors.white)),
                      SizedBox(
                        width: 100,
                        child: Text('Roma', textAlign: TextAlign.end, style: Styles.headLineStyle4.copyWith(color: Colors.white)),
                      ),
                    ],
                  )
                ],
              ),
            ),
            /*
            show the orange part of the card/ticket
             */
            Container(
              color: Styles.orangeColor,
              child: Row(
                children: [
                  SizedBox(
                    height: 20,
                    width: 10,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(10),
                          bottomRight: Radius.circular(10)
                        ),
                      ),
                    ),
                  ),
                  Expanded(child: Flex(
                    direction: Axis.horizontal,
                    children: List.generate(5, (index) => SizedBox(
                      width: 5,
                      height: 1,
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                          color: Colors.white
                        ),
                      ),
                    ))
                  )),
                  SizedBox(
                    height: 20,
                    width: 10,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            bottomLeft: Radius.circular(10)
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
