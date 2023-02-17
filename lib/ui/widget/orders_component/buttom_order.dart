import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:tawsel/config/colors.dart';

import '../../../config/font.dart';
import '../../screens/orders.dart';

class buttom_order extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      color: colors.statesbar_grey,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              padding: EdgeInsets.only(left: 10, right: 10),
              decoration: BoxDecoration(
                  color: colors.white, borderRadius: BorderRadius.circular(5)),
              child: TextButton(
                  onPressed: (() {}),
                  child: Text(
                    "قيد التوصيل",
                    style: TextStyle(
                        color: colors.black,
                        fontSize: 15,
                        fontFamily: Fonts.cairo_semiBold),
                  )),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                padding: EdgeInsets.only(left: 10, right: 10),
                decoration: BoxDecoration(
                    color: colors.white,
                    borderRadius: BorderRadius.circular(6)),
                child: TextButton(
                    onPressed: (() {}),
                    child: Text(
                      "الطلبات الحاليه",
                      style: TextStyle(
                          color: colors.black,
                          fontSize: 15,
                          fontFamily: Fonts.cairo_semiBold),
                    )),
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 10, right: 10),
              decoration: BoxDecoration(
                  color: colors.orange, borderRadius: BorderRadius.circular(6)),
              child: TextButton(
                  onPressed: (() {}),
                  child: Text(
                    "كل الطلبات",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontFamily: Fonts.cairo_semiBold),
                  )),
            )
          ],
        ),
      ),
    ));
  }
}
