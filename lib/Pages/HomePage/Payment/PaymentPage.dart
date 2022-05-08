import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:wallet/components/constants.dart';

class Payment extends StatelessWidget {
  const Payment({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: BackgroundColor,
      appBar: DefaultAppBar(
        Title: "Payment",
          function: (){
            Navigator.pop(context);
          }
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 50.0,
              ),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 150.0,
                      width: double.infinity,
                      decoration: ContainerStyle(),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset("assets/icons/internet.svg"),
                          SizedBox(
                            height: 10.0,
                          ),
                          DefaultText(
                            text: "Internet",
                            textColor: TextColor,
                            FontWeight: FontWeight.normal,
                            FontSize: 15.0,
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Expanded(
                    child: Container(
                      height: 150.0,
                      width: double.infinity,
                      decoration: ContainerStyle(),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                              height: 75.0,
                              child: Image.asset("assets/images/fawry.png")),
                          SizedBox(
                            height: 10.0,
                          ),
                          DefaultText(
                            text: "Fawry",
                            textColor: TextColor,
                            FontWeight: FontWeight.normal,
                            FontSize: 15.0,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20.0,
              ),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 150.0,
                      width: double.infinity,
                      decoration: ContainerStyle(),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset("assets/icons/Iandline.svg"),
                          SizedBox(
                            height: 10.0,
                          ),
                          DefaultText(
                            text: "Iandline",
                            textColor: TextColor,
                            FontWeight: FontWeight.normal,
                            FontSize: 15.0,
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Expanded(
                    child: Container(
                      height: 150.0,
                      width: double.infinity,
                      decoration: ContainerStyle(),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset(
                              "assets/icons/General facilities.svg"),
                          SizedBox(
                            height: 10.0,
                          ),
                          DefaultText(
                            text: "General facilities",
                            textColor: TextColor,
                            FontWeight: FontWeight.normal,
                            FontSize: 15.0,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
