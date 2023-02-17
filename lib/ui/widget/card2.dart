import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:tawsel/config/colors.dart';
import 'package:tawsel/ui/screens/homepage.dart';
import 'package:tawsel/ui/screens/order_Details.dart';

import '../../config/font.dart';

class card2 extends StatefulWidget {
  card2(states_order);

  @override
  State<card2> createState() => _cardState();
}

class _cardState extends State<card2> {
  @override
  Widget build(BuildContext context) {
    String? states_order = "";
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SizedBox(
          height: height * .4,
          width: width * .9,
          //square box; equal height and width so that it won't look like oval
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5),
              //set border radius more than 50% of height and width to make circle
            ),
            color: colors.white,
            elevation: 5,
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        states_order,
                        style: TextStyle(
                            color: colors.orange,
                            fontSize: 20,
                            fontFamily: Fonts.cairo_Bold),
                      ),
                      Text(
                        "رقم الطلب#41452",
                        style: TextStyle(
                            fontSize: 20, fontFamily: Fonts.cairo_Bold),
                      ),
                    ],
                  ),
                  Divider(
                    color: colors.black,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text("شارع44 -السبتيه- القاهره",
                          style: TextStyle(fontFamily: Fonts.cairo_Bold)),
                      Icon(Icons.location_pin, color: colors.orange),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text("11:00, 20/10/2021",
                          style: TextStyle(fontFamily: Fonts.cairo_Regular)),
                      Icon(Icons.timelapse_outlined),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("ج.م 30",
                          style: TextStyle(
                              fontFamily: Fonts.cairo_Bold, fontSize: 20)),
                      Text("التكلفه:",
                          style: TextStyle(
                              fontFamily: Fonts.cairo_Bold, fontSize: 20)),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 15),
                    child: Container(
                      padding: EdgeInsets.only(left: 90, right: 90),
                      decoration: BoxDecoration(
                          color: colors.statesbar_grey,
                          borderRadius: BorderRadius.circular(6)),
                      child: TextButton(
                          onPressed: (() {
                            Get.to(order_Details());
                          }),
                          child: Text(
                            "عرض التفاصيل",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontFamily: Fonts.cairo_Regular),
                          )),
                    ),
                  ),
                ],
              ),
            ),
          )),
    );
  }
}
