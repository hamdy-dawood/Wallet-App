import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:wallet/Account/SignupPage/signup_page.dart';
import 'package:wallet/components/constants.dart';

class SendMoney extends StatelessWidget {
  SendMoney({Key? key}) : super(key: key);

  var formkey = GlobalKey<FormState>();
  var NumberSendController = TextEditingController();
  var AmountSendController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DefaultAppBar(
        Title: "Send Money",
          function: (){
            Navigator.pop(context);
          }
      ),
      backgroundColor: BackgroundColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12.0),
        child: SingleChildScrollView(
          child: Form(
            key: formkey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  children: [
                    DefaultText(
                      text: "number to send",
                      textColor: TextColor,
                      FontWeight: FontWeight.normal,
                      FontSize: 15.0,
                    ),
                  ],
                ),
                SizedBox(
                  height: 10.0,
                ),
                DefaultFormField(
                  controller: NumberSendController,
                  Validate: (value) {
                    if (value.isEmpty) {
                      return "Number must not be empty";
                    }
                    return null;
                  },
                  type: TextInputType.phone,
                  image: Image.asset(
                    "assets/icons/telephone.png",
                    color: Colors.grey,
                  ),
                  text: "",
                ),
                SizedBox(
                  height: 20.0,
                ),
                Row(
                  children: [
                    DefaultText(
                      text: "amount to send",
                      textColor: TextColor,
                      FontWeight: FontWeight.normal,
                      FontSize: 15.0,
                    ),
                  ],
                ),
                SizedBox(
                  height: 10.0,
                ),
                DefaultFormField(
                  controller: AmountSendController,
                  obscureText: true,
                  type: TextInputType.phone,
                  Validate: (value) {
                    if (value.isEmpty) {
                      return "Amount must not be empty";
                    }
                    return null;
                  },
                  image: Image.asset(
                    "assets/icons/dollar.png",
                    color: TextColor,
                  ),
                  text: "",
                ),
                SizedBox(
                  height: 10.0,
                ),
                Row(
                  children: [
                    DefaultText(
                      text: "reminding:",
                      textColor: TextColor,
                      FontWeight: FontWeight.normal,
                      FontSize: 12.0,
                    ),
                    SizedBox(
                      width: 5.0,
                    ),
                    DefaultText(
                      text: "\$5226.66",
                      textColor: Colors.red,
                      FontWeight: FontWeight.normal,
                      FontSize: 12.0,
                    ),
                  ],
                ),
                SizedBox(
                  height: 30.0,
                ),
                DefaultButton(
                  text: "Confirm",
                  function: () {
                    if (formkey.currentState!.validate()) {
                      print(NumberSendController.text);
                      print(AmountSendController.text);
                    }
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
