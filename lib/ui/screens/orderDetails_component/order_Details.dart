import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:tawsel/ui/screens/homepage/home_page_component/currentorder.dart';
import 'package:tawsel/ui/screens/homepage/home_page_component/order.dart';
import 'package:tawsel/ui/screens/orderDetails_component/reject-order.dart';

class order_Details extends StatefulWidget {
  const order_Details({super.key});

  @override
  State<order_Details> createState() => _order_DetailsState();
}

class _order_DetailsState extends State<order_Details> {
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
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                    Text(
                      "تفاصيل الطلب",
                      style: TextStyle(fontFamily: 'Cairo-Bold', fontSize: 20),
                    )
                  ],
                ),
              ),
              Container(
                height: height * 0.3,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(18),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "قيد التوصيل ",
                            style: TextStyle(
                                color: Color.fromARGB(255, 255, 102, 0),
                                fontSize: 20,
                                fontFamily: 'Cairo-Bold'),
                          ),
                          Text(
                            "رقم الطلب#41452",
                            style: TextStyle(
                                fontSize: 20, fontFamily: 'Cairo-Bold'),
                          ),
                        ],
                      ),
                      Divider(
                        color: Colors.black,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text("شارع44 -السبتيه- القاهره",
                              style: TextStyle(fontFamily: 'Cairo-Bold')),
                          Icon(Icons.location_pin,
                              color: Color.fromARGB(255, 255, 102, 0)),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text("11:00, 20/10/2021",
                              style: TextStyle(fontFamily: 'Cairo-Regular')),
                          Icon(Icons.timelapse_outlined),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("ج.م 30",
                              style: TextStyle(
                                  fontFamily: 'Cairo-Bold', fontSize: 20)),
                          Text("التكلفه:",
                              style: TextStyle(
                                  fontFamily: 'Cairo-Bold', fontSize: 20))
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                height: height * .99,
                child: reject_order(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
