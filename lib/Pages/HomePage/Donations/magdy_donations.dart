import 'package:flutter/material.dart';
import 'package:wallet/Pages/HomePage/Donations/gift.dart';
import 'package:wallet/components/constants.dart';

class Magdy extends StatelessWidget {
  Magdy({Key? key}) : super(key: key);

  var formkey = GlobalKey<FormState>();
  var NumberSendController = TextEditingController();
  var AmountSendController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: BackgroundColor,
      appBar: DefaultAppBar(
          Title: "Magdi yacoub",
          function: (){
            Navigator.pop(context);
          }
      ),
        body: Padding(
          padding:const EdgeInsets.symmetric(horizontal: 12.0),
          child: SingleChildScrollView(
            child: Form(
              key: formkey,
              child: Column(
                children: [
                  SizedBox(
                    height: 40.0,
                  ),
                  Container(
                    height: 150,
                    width: double.infinity,
                    decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(10.0)),
                    child: Image.asset("assets/images/صناع الامل.png"),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Row(
                    children: [
                      DefaultText(
                        text: "Magdi yacoub",
                        textColor: TitleColor,
                        FontWeight: FontWeight.bold,
                        FontSize: 15.0,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  DefaultText(
                    text: "Lorem lpsum is simply dummy text of the printing and typesetting industry",
                    textColor: TextColor,
                    FontWeight: FontWeight.normal,
                    FontSize: 15.0,
                  ),
                  SizedBox(
                    height: 50.0,
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
                    type: TextInputType.visiblePassword,
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
                    height: 40.0,
                  ),
                  DefaultButton(
                    text: "Send",
                    function: () {
                      if (formkey.currentState!.validate()) {
                        print(NumberSendController.text);
                        print(AmountSendController.text);
                      }
                    },
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                ],
              ),
            ),
          ),
        ),
    );
  }
}
