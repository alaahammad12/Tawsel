import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tawsel/ui/widget/card2.dart';
import 'package:tawsel/ui/widget/orders_component/buttom_order.dart';
import '../../config/font.dart';
import '../widget/card1.dart';
import '../widget/home_page_component/homepage_title.dart';

class orderr extends StatefulWidget {
  const orderr({super.key});

  @override
  State<orderr> createState() => _orderrState();
}

class _orderrState extends State<orderr> {
  get states_order => String;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              child: title(),
              height: height * 0.15,
            ),
            Container(
              height: height * .1,
              child: buttom_order(),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  "الطلبات الحاليه",
                  style: TextStyle(fontSize: 25, fontFamily: Fonts.cairo_Bold),
                ),
                Container(
                  width: width * .9,
                  height: height * 0.4,
                  child: card2("قيد التوصيل"),
                ),
                Text(
                  "طلبات منتهيه",
                  style: TextStyle(fontSize: 25, fontFamily: Fonts.cairo_Bold),
                ),
                Container(
                    width: width * .9,
                    height: height * 0.33,
                    child: card1(
                      " مكتمل",
                    )),
                Container(
                    width: width * .9,
                    height: height * 0.4,
                    child: card2(" ملغيه")),
              ],
            )
          ],
        ),
      ),
    );
  }
}
