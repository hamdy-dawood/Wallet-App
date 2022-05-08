import 'package:flutter/material.dart';
import 'package:wallet/components/constants.dart';

class Gift extends StatelessWidget {
  const Gift({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: BackgroundColor,
      appBar: DefaultAppBar(
          Title: "",
          function: () {
            Navigator.pop(context);
          }),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12.0),
        child: SingleChildScrollView(
            child: Column(
          children: [
            SizedBox(
              height: 50.0,
            ),
            Container(
              height: 300,
              width: double.infinity,
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(10.0)),
              child: Image.asset("assets/images/gift.png"),
            ),
            SizedBox(
              height: 30.0,
            ),
            DefaultText(
              text: "The gift has been sent",
              textColor: MainColor,
              FontWeight: FontWeight.bold,
              FontSize: 25.0,
            ),
          ],
        )),
      ),
    );
  }
}
