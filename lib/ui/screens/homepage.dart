import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tawsel/ui/widget/card1.dart';
import 'package:tawsel/ui/widget/card2.dart';
import 'package:tawsel/ui/widget/home_page_component/order_homepage.dart';

import '../../config/font.dart';
import '../widget/home_page_component/homepage_title.dart';

class homepage extends StatelessWidget {
  const homepage();

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              child: title(),
              height: height * 0.13,
            ),
            Container(height: height * 0.35, child: order_homepage()),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  "الطلبات الحاليه",
                  style: TextStyle(fontSize: 25, fontFamily: Fonts.cairo_Bold),
                ),
                Container(
                    width: width * .9,
                    height: height * 0.35,
                    child: card2(
                      "قيد التوصيل",
                    )),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
