import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:tawsel/config/colors.dart';

class title extends StatefulWidget {
  const title({super.key});

  @override
  State<title> createState() => _titleState();
}

class _titleState extends State<title> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        backgroundColor: colors.statesbar_grey,
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    width: width * 0.12,
                    height: height * 0.06,
                    child: Image(
                      image: AssetImage("asset/Fonts/Icons/Group 11387.png"),
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(width: width * 0.14),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        "كرسبي&كرانشي",
                        style: TextStyle(
                            fontSize: 20, fontFamily: 'Cairo-Regular'),
                      ),
                      Row(
                        children: [
                          Text("شارع10 -باب الشعريه- القاهره",
                              style: TextStyle(fontFamily: 'Cairo-Regular')),
                          Icon(Icons.location_pin),
                        ],
                      )
                    ],
                  ),
                  CircleAvatar(
                      radius: 30,
                      backgroundImage:
                          AssetImage('asset/Fonts/Images/download.jpg')),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
