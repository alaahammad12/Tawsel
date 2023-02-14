import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class order extends StatefulWidget {
  const order({super.key});

  @override
  State<order> createState() => _orderState();
}

class _orderState extends State<order> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 241, 244, 243),
        body: Padding(
          padding: const EdgeInsets.only(left: 15, right: 15),
          child: Container(
            height: height * 0.3,
            decoration: BoxDecoration(
              color: Colors.white,
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
                                fontSize: 23, fontFamily: 'Cairo-SemiBold'),
                          ),
                          Text("والتوصيل علينا",
                              style: TextStyle(
                                  fontSize: 23, fontFamily: 'Cairo-SemiBold')),
                          Padding(
                            padding: const EdgeInsets.only(top: 15),
                            child: Container(
                              padding: EdgeInsets.only(left: 15, right: 15),
                              decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 255, 102, 0),
                                  borderRadius: BorderRadius.circular(6)),
                              child: TextButton(
                                  onPressed: (() {}),
                                  child: Text(
                                    "اطلب دلوقتي",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 15,
                                        fontFamily: 'Cairo-Regular'),
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
