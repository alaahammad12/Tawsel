import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tawsel/config/colors.dart';
import 'package:tawsel/config/font.dart';
import 'package:tawsel/ui/screens/orders.dart';

class order_homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
        backgroundColor: colors.statesbar_grey,
        body: Padding(
          padding: const EdgeInsets.only(left: 15, right: 15),
          child: Container(
            height: height * 0.3,
            decoration: BoxDecoration(
              color: colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      height: height * 0.3,
                      child: Image(
                        image: AssetImage('asset/Fonts/Images/Group 6.png'),
                        fit: BoxFit.fitHeight,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 5),
                      child: Column(
                        children: [
                          Text(
                            "استلم فلوسك",
                            style: TextStyle(
                                fontSize: 23, fontFamily: Fonts.cairo_semiBold),
                          ),
                          Text("والتوصيل علينا",
                              style: TextStyle(
                                  fontSize: 23,
                                  fontFamily: Fonts.cairo_semiBold)),
                          Padding(
                            padding: const EdgeInsets.only(top: 15),
                            child: Container(
                              padding: EdgeInsets.only(left: 15, right: 15),
                              decoration: BoxDecoration(
                                  color: colors.orange,
                                  borderRadius: BorderRadius.circular(6)),
                              child: TextButton(
                                  onPressed: (() {
                                    Get.to(orderr());
                                  }),
                                  child: Text(
                                    "اطلب دلوقتي",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 15,
                                        fontFamily: Fonts.cairo_Regular),
                                  )),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ));
  }
}
