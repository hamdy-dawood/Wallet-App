import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:wallet/Pages/HomePage/home_page.dart';
import 'package:wallet/Pages/NotificationsPage/notification_page.dart';
import 'package:wallet/Pages/SettingPage/setting_page.dart';
import 'package:wallet/Pages/ShopPage/shop_page.dart';
import 'package:wallet/components/constants.dart';

class NavigationBar extends StatefulWidget {
  const NavigationBar({Key? key}) : super(key: key);

  @override
  _NavigationBarState createState() => _NavigationBarState();
}

class _NavigationBarState extends State<NavigationBar> {
  int selectIndex = 0;
  final screen = [
    HomePage(),
    ShopPage(),
    NotificationPage(),
    SettingPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: BackgroundColor,
        bottomNavigationBar: CurvedNavigationBar(
          height: 60.0,
          index: selectIndex,
          backgroundColor: Colors.grey.shade200,
          color: Colors.white,
          buttonBackgroundColor: Colors.white,
          animationCurve: Curves.easeInOut,
          animationDuration: Duration(milliseconds: 400),
          items: <Widget>[
            Container(
              height: 25.0,
              width: 25.0,
              child: SvgPicture.asset("assets/icons/home.svg",color:MainColor),
            ),
            Container(
              height: 25.0,
              width: 25.0,
              child: Image.asset(
                "assets/images/shopping-bag.png",
                color: MainColor,
              ),
            ),
            Container(
              height: 25.0,
              width: 25.0,
              child: Image.asset(
                "assets/icons/notification.png",
                color: MainColor,
              ),
            ),
            Container(
              height: 25.0,
              width: 25.0,
              child: SvgPicture.asset(
                "assets/icons/setting.svg",
                color: MainColor,
              ),
            ),
          ],
          onTap: (index) {
            setState(() {
              selectIndex = index;
            });
          },
          letIndexChange: (index) => true,
        ),
        body: screen[selectIndex]);
  }
}
