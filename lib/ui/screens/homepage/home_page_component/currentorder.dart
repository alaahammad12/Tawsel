import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class currentorder extends StatefulWidget {
  const currentorder({super.key});

  @override
  State<currentorder> createState() => _currentorderState();
}

class _currentorderState extends State<currentorder> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(
            "الطلبات الحاليه",
            style: TextStyle(fontSize: 25, fontFamily: 'Cairo-Bold'),
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
                        style:
                            TextStyle(fontSize: 20, fontFamily: 'Cairo-Bold'),
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
                          style:
                              TextStyle(fontFamily: 'Cairo-Bold', fontSize: 20))
                    ],
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 100, right: 100),
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 241, 244, 243),
                        borderRadius: BorderRadius.circular(6)),
                    child: TextButton(
                        onPressed: (() {}),
                        child: Text(
                          "عرض التفاصيل",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontFamily: 'Cairo-Regular'),
                        )),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    ));
  }
}
