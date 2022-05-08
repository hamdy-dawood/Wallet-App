import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/link.dart';
import 'package:wallet/components/constants.dart';
import 'package:url_launcher/url_launcher.dart';

class ShopPage extends StatelessWidget {

  // final List companyDetails = [
  //   ['Amazon', 'assets/images/amazon.jpg'],
  //   ['Noon', 'assets/images/Noon.jpeg'],
  //   ['Ebay', 'assets/images/ebay.png'],
  //   ['Asos', 'assets/images/asos.png'],
  // ];

  String Amazon_url = 'https://www.amazon.com/';
  String Noon_url = 'https://www.noon.com/';
  String Ebay_url = 'https://www.ebay.com/';
  String Asos_url = 'https://www.asos.com/';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: BackgroundColor,
      appBar: DefaultAppBar(Title: "Find Products", function: () {}),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12.0),
        child: SafeArea(
          child: Column(
            children: [
              Container(
                height: 150,
                  width: 150,
                  child: Image.asset("assets/images/shopping-bag.png",
                      color: TitleColor)),
              const SizedBox(
                height: 40.0,
              ),
              DefaultText(
                text: "Shopping in :",
                textColor: TitleColor,
                FontWeight: FontWeight.bold,
                FontSize: 25.0,
              ),
              SizedBox(
                height: 10.0,
              ),
              const SizedBox(
                height: 10.0,
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 12.0),
                child: GestureDetector(
                  onTap: _launchURL,
                  child: Container(
                    padding: EdgeInsets.all(8.0),
                    decoration: ContainerStyle(),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Container(
                                height: 50.0,
                                width: 50,
                                child: Image.asset('assets/images/amazon.jpg'),
                              ),
                            ),
                            SizedBox(
                              width: 15.0,
                            ),
                            DefaultText(
                              text: 'Amazon',
                              textColor: Colors.black,
                              FontWeight: FontWeight.normal,
                              FontSize: 20.0,
                            ),
                          ],
                        ),
                        Icon(
                          Icons.arrow_forward_outlined,
                          size: 20.0,
                          color: Colors.black,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 12.0),
                child: GestureDetector(
                  onTap: _launch_Noon,
                  child: Container(
                    padding: EdgeInsets.all(8.0),
                    decoration: ContainerStyle(),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Container(
                                height: 50.0,
                                width: 50,
                                child: Image.asset('assets/images/Noon.jpeg'),
                              ),
                            ),
                            SizedBox(
                              width: 15.0,
                            ),
                            DefaultText(
                              text: 'Noon',
                              textColor: Colors.black,
                              FontWeight: FontWeight.normal,
                              FontSize: 20.0,
                            ),
                          ],
                        ),
                        Icon(
                          Icons.arrow_forward_outlined,
                          size: 20.0,
                          color: Colors.black,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 12.0),
                child: GestureDetector(
                  onTap: _launch_Ebay,
                  child: Container(
                    padding: EdgeInsets.all(8.0),
                    decoration: ContainerStyle(),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Container(
                                height: 50.0,
                                width: 50,
                                child: Image.asset('assets/images/ebay.png'),
                              ),
                            ),
                            SizedBox(
                              width: 15.0,
                            ),
                            DefaultText(
                              text: 'Ebay',
                              textColor: Colors.black,
                              FontWeight: FontWeight.normal,
                              FontSize: 20.0,
                            ),
                          ],
                        ),
                        Icon(
                          Icons.arrow_forward_outlined,
                          size: 20.0,
                          color: Colors.black,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 12.0),
                child: GestureDetector(
                  onTap: _launch_Asos,
                  child: Container(
                    padding: EdgeInsets.all(8.0),
                    decoration: ContainerStyle(),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Container(
                                height: 50.0,
                                width: 50,
                                child: Image.asset('assets/images/asos.png'),
                              ),
                            ),
                            SizedBox(
                              width: 15.0,
                            ),
                            DefaultText(
                              text: 'Asos',
                              textColor: Colors.black,
                              FontWeight: FontWeight.normal,
                              FontSize: 20.0,
                            ),
                          ],
                        ),
                        Icon(
                          Icons.arrow_forward_outlined,
                          size: 20.0,
                          color: Colors.black,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              // because of can't use lis of url:

              // SizedBox(
              //   height: 400.0,
              //   child: ListView.builder(
              //     itemCount: companyDetails.length,
              //     itemBuilder: (context, index) => ShoppingList(
              //       companyName: companyDetails[index][0],
              //       logoImagePath: companyDetails[index][1],
              //     ),
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }

  void _launchURL() async {
    if (!await launch(Amazon_url)) throw 'Could not launch $Amazon_url';
  }

  void _launch_Noon() async {
    if (!await launch(Noon_url)) throw 'Could not launch $Noon_url';
  }

  void _launch_Ebay() async {
    if (!await launch(Ebay_url)) throw 'Could not launch $Ebay_url';
  }

  void _launch_Asos() async {
    if (!await launch(Asos_url)) throw 'Could not launch $Asos_url';
  }
}
