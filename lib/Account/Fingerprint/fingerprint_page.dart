import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:wallet/Account/SignupPage/signup_page.dart';
import 'package:wallet/components/constants.dart';

class Fingerprint extends StatelessWidget {
  Fingerprint({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: DefaultAppBar(
      //     Title: "Fingerprint",function: (){
      //   Navigator.pop(context);
      // }
      // ),
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: BackgroundColor,
        leading: GestureDetector(
            onTap: (){
              Navigator.pop(context);
            },
            child: Icon(Icons.arrow_back_ios,color: TitleColor)),
        actions: [
         Icon(Icons.cancel_outlined, color: TitleColor,)
        ],
      ),
      backgroundColor: BackgroundColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            DefaultText(
              text: "To add your fingerprint",
              textColor: TextColor,
              FontWeight: FontWeight.bold,
              FontSize: 16.0,
            ),
            SizedBox(
              height: 60.0,
            ),
            Center(
              child: SvgPicture.asset("assets/icons/fingerprint.svg"),
            ),
            SizedBox(
              height: 60.0,
            ),
            DefaultButton(text: "Continue", function: () {}),
          ],
        ),
      ),
    );
  }
}
