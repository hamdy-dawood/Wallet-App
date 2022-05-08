import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:wallet/Pages/HomePage/Donations/donations.dart';
import 'package:wallet/Pages/HomePage/Payment/PaymentPage.dart';
import 'package:wallet/Pages/HomePage/ReceiveMoney/Receive_money.dart';
import 'package:wallet/Pages/HomePage/SendMoney/Send_page.dart';
import 'package:wallet/Pages/HomePage/navigationBar.dart';
import 'package:wallet/components/constants.dart';

import 'compnants/components.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 50.0,
            ),
            Row(
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage("assets/images/person.jpg"),
                ),
                SizedBox(
                  width: 10.0,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    DefaultText(
                      text: "Hello\!",
                      textColor: TitleColor,
                      FontWeight: FontWeight.bold,
                      FontSize: 25.0,
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    DefaultText(
                      text: "Hamdy Dawood",
                      textColor: Colors.black,
                      FontWeight: FontWeight.bold,
                      FontSize: 15.0,
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 20.0,
            ),
            Container(
              height: 100.0,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Row(
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 15.0),
                      child:
                          SvgPicture.asset("assets/images/currentBallance.svg"),
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Current Ballane",
                          style: TextStyle(color: Colors.white),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Text(
                          "\$2,538.26",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20.0),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 15.0,
            ),
            Row(
              children: [
                Expanded(
                    child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SendMoney(),
                        ));
                  },
                  child: DefaultContainer(
                    svgPicture: SvgPicture.asset("assets/images/Send.svg"),
                    text: "Send",
                  ),
                )),
                SizedBox(
                  width: 5.0,
                ),
                Expanded(
                    child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ReceiveMoney(),
                        ));
                  },
                  child: DefaultContainer(
                    svgPicture: SvgPicture.asset("assets/images/Receive.svg"),
                    text: "Receive",
                  ),
                )),
                SizedBox(
                  width: 5.0,
                ),
                Expanded(
                    child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Payment(),
                        ));
                  },
                  child: DefaultContainer(
                    svgPicture: SvgPicture.asset("assets/images/Payment.svg"),
                    text: "Payment",
                  ),
                )),
                SizedBox(
                  width: 5.0,
                ),
                Expanded(
                    child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Donations(),
                        ));
                  },
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, 'Donations');
                    },
                    child: DefaultContainer(
                      svgPicture:
                          SvgPicture.asset("assets/images/Donations.svg"),
                      text: "Donations",
                    ),
                  ),
                )),
              ],
            ),
            SizedBox(
              height: 30.0,
            ),
            Row(
              children: [
                Container(
                  height: 50.0,
                  width: 50.0,
                  child: Container(
                    child: Image.asset("assets/images/Shopify.png"),
                  ),
                ),
                SizedBox(
                  width: 10.0,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Shopify",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 5.0,
                    ),
                    Text(
                      "12 Hours ago",
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
                Expanded(
                  child: Container(
                    alignment: Alignment.centerRight,
                    child: Text(
                      "\$926.66",
                      style: TextStyle(color: Colors.green),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 15.0,
            ),
            Row(
              children: [
                Container(
                  height: 50.0,
                  width: 50.0,
                  child: Container(
                    child: Image.asset("assets/images/Paypal.png"),
                  ),
                ),
                SizedBox(
                  width: 10.0,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Paypal",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 5.0,
                    ),
                    Text(
                      "3 days",
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
                Expanded(
                  child: Container(
                    alignment: Alignment.centerRight,
                    child: Text(
                      "\$345.2",
                      style: TextStyle(color: Colors.blue),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 15.0,
            ),
            Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Container(
                    height: 50.0,
                    width: 50.0,
                    child: Container(
                      child: Image.asset("assets/images/vodafone.jpg"),
                    ),
                  ),
                ),
                SizedBox(
                  width: 10.0,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "vodafone",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 5.0,
                    ),
                    Text(
                      "2 days",
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
                Expanded(
                  child: Container(
                    alignment: Alignment.centerRight,
                    child: Text(
                      "\$536.4",
                      style: TextStyle(color: Colors.red),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 15.0,
            ),
            Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Container(
                    height: 50.0,
                    width: 50.0,
                    child: Container(
                      child: Image.asset("assets/images/orange.jpg"),
                    ),
                  ),
                ),
                SizedBox(
                  width: 10.0,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "orange",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 5.0,
                    ),
                    Text(
                      "12 Hours ago",
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
                Expanded(
                  child: Container(
                    alignment: Alignment.centerRight,
                    child: Text(
                      "\$490.9",
                      style: TextStyle(color: Colors.deepOrange),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 15.0,
            ),
            Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Container(
                    height: 50.0,
                    width: 50.0,
                    child: Container(
                      child: Image.asset("assets/images/visa.jpg"),
                    ),
                  ),
                ),
                SizedBox(
                  width: 10.0,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "visa",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 5.0,
                    ),
                    Text(
                      "3 days",
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
                Expanded(
                  child: Container(
                    alignment: Alignment.centerRight,
                    child: Text(
                      "\$240.2",
                      style: TextStyle(color: Colors.blue),
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
