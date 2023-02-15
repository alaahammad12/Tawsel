import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:tawsel/ui/screens/homepage/home_page_component/currentorder.dart';
import 'package:tawsel/ui/screens/homepage/home_page_component/order.dart';

import 'home_page_component/homepage_title.dart';

class homepage extends StatefulWidget {
  const homepage({super.key});

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
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
            Container(height: height * 0.35, child: order()),
            Container(height: height * 0.4, child: currentorder()),
          ],
        ),
      ),
    );
  }
}
