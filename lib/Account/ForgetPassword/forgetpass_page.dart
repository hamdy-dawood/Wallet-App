import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:wallet/Account/SignupPage/signup_page.dart';
import 'package:wallet/Pages/HomePage/navigationBar.dart';
import 'package:wallet/components/constants.dart';

class ForgetPass extends StatelessWidget {
  ForgetPass({Key? key}) : super(key: key);

  var formkey = GlobalKey<FormState>();
  var NewpassController = TextEditingController();
  var ConfPassController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DefaultAppBar(
          Title: "Forget password",
          function: () {
            Navigator.pop(context);
          }),
      backgroundColor: BackgroundColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12.0),
        child: SingleChildScrollView(
          child: Form(
            key: formkey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Center(
                    child: Image.asset("assets/images/logo.png",
                        color: MainColor)),
                SizedBox(
                  height: 20.0,
                ),
                DefaultText(
                  text: "Creat new password",
                  textColor: TitleColor,
                  FontWeight: FontWeight.bold,
                  FontSize: 15.0,
                ),
                SizedBox(
                  height: 40.0,
                ),
                DefaultFormField(
                  controller: NewpassController,
                  Validate: (value) {
                    if (value.isEmpty) {
                      return "New pass must not be empty";
                    }
                    return null;
                  },
                  type: TextInputType.text,
                  image: Image.asset(
                    "assets/icons/user.png",
                    color: Colors.grey,
                  ),
                  text: "New Password",
                ),
                SizedBox(
                  height: 15.0,
                ),
                DefaultFormField(
                  controller: ConfPassController,
                  obscureText: true,
                  type: TextInputType.visiblePassword,
                  Validate: (value) {
                    if (value.isEmpty) {
                      return "Confirm pass must not be empty";
                    }
                    return null;
                  },
                  image: Image.asset(
                    "assets/icons/key.png",
                    color: Colors.grey,
                  ),
                  text: "Confirm new password",
                ),
                SizedBox(
                  height: 40.0,
                ),
                DefaultButton(
                  text: "Confirm",
                  function: () {
                    if (formkey.currentState!.validate()) {
                      print(NewpassController.text);
                      print(ConfPassController.text);
                    }
                  },
                ),
                const SizedBox(
                  height: 50.0,
                ),
                Container(
                  alignment: Alignment.bottomRight,
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => NavigationBar(),
                          ));
                    },
                    child: DefaultText(
                      text: "Skip",
                      textColor: MainColor,
                      FontWeight: FontWeight.bold,
                      FontSize: 20.0,
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
