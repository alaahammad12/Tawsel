import 'package:tawsel/ui/screens/homepage/homepage.dart';
import 'package:tawsel/ui/screens/neworder.dart';
import 'package:tawsel/ui/screens/orderDetails_component/order_Details.dart';
import 'package:tawsel/ui/screens/profile.dart';

class PagesNames {
  static String homePage = "/homePage";
  static String startScreen = "/start";
  static String morePage = "/morePage";
  static String qrcodePage = "/qrcodePage";

  static List listOfPages = [
    homepage(),
    neworder(),
    order_Details(),
    profile()
  ];
}
