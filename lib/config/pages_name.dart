import 'package:get/get.dart';
import 'package:tawsel/ui/screens/homepage/homepage.dart';
import 'package:tawsel/ui/screens/neworder.dart';
import 'package:tawsel/ui/screens/orderDetails/order_Details.dart';
import 'package:tawsel/ui/screens/profile.dart';

class PagesNames {
  static String homePage = "/homePage";
  static String orderdetails = "/order_Details";
  static String neworder = "/neworder";
  static String profile = "/profile";

  static List<GetPage> listOfPages = [
    GetPage(
      name: homePage,
      page: ((() => homepage())),
    ),
    GetPage(
      name: orderdetails,
      page: (() => order_Details()),
    ),
  ];
}
