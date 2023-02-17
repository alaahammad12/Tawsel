import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:tawsel/config/font.dart';
import 'package:tawsel/ui/screens/homepage.dart';
import 'package:tawsel/ui/widget/card1.dart';
import 'package:tawsel/ui/widget/card2.dart';

import 'package:tawsel/ui/widget/orderDetails_component/reject-order.dart';

class order_Details extends StatelessWidget {
  const order_Details({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20, top: 30),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 10, bottom: 10),
                child: Row(
                  //  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Container(
                        width: width * 0.12,
                        height: height * 0.06,
                        child: Image(
                          image:
                              AssetImage("asset/Fonts/Icons/Group 11387.png"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: width * 0.35,
                    ),
                    Text(
                      "تفاصيل الطلب",
                      style:
                          TextStyle(fontFamily: Fonts.cairo_Bold, fontSize: 20),
                    ),
                    GestureDetector(
                      child: Icon(Icons.arrow_forward),
                      onTap: (() {
                        Get.to(homepage());
                      }),
                    )
                  ],
                ),
              ),
              Container(
                height: height * .3,
                child: card1(
                  "قيد التوصيل",
                ),
              ),
              Container(
                height: height * .99,
                child: reject_order(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
