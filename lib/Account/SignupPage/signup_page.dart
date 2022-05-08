import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wallet/Account/LogInPage/logIn_page.dart';
import 'package:wallet/Pages/HomePage/navigationBar.dart';
import 'package:wallet/components/constants.dart';

class SignUp extends StatelessWidget {
  SignUp({Key? key}) : super(key: key);

  var formkey = GlobalKey<FormState>();
  var UserController = TextEditingController();
  var phoneController = TextEditingController();
  var passController = TextEditingController();
  var confpassController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DefaultAppBar(
          Title: "",
          function: () {
            Navigator.pop(context);
          }),
      backgroundColor: BackgroundColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12.0),
        child: SingleChildScrollView(
          physics: NeverScrollableScrollPhysics(),
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
                  text: "Create your account",
                  textColor: TitleColor,
                  FontWeight: FontWeight.bold,
                  FontSize: 15.0,
                ),
                SizedBox(
                  height: 40.0,
                ),
                DefaultFormField(
                  controller: UserController,
                  Validate: (value) {
                    if (value.isEmpty) {
                      return "User name must not be empty";
                    }
                    return null;
                  },
                  type: TextInputType.text,
                  image: Image.asset(
                    "assets/icons/user.png",
                    color: Colors.grey,
                  ),
                  text: "User Name",
                ),
                SizedBox(
                  height: 15.0,
                ),
                DefaultFormField(
                  controller: phoneController,
                  Validate: (value) {
                    if (value.isEmpty) {
                      return "Phone must not be empty";
                    }
                    return null;
                  },
                  type: TextInputType.phone,
                  image: Image.asset(
                    "assets/icons/telephone.png",
                    color: Colors.grey,
                  ),
                  text: "Phone",
                ),
                SizedBox(
                  height: 15.0,
                ),
                DefaultFormField(
                  controller: passController,
                  obscureText: true,
                  type: TextInputType.visiblePassword,
                  Validate: (value) {
                    if (value.isEmpty) {
                      return "password must not be empty";
                    }
                    return null;
                  },
                  image: Image.asset(
                    "assets/icons/key.png",
                    color: Colors.grey,
                  ),
                  text: "Confirm Password",
                ),
                SizedBox(
                  height: 15.0,
                ),
                DefaultFormField(
                  controller: confpassController,
                  obscureText: true,
                  type: TextInputType.visiblePassword,
                  Validate: (value) {
                    if (value.isEmpty) {
                      return "confirmPass must not be empty";
                    }
                    return null;
                  },
                  image: Image.asset(
                    "assets/icons/key.png",
                    color: Colors.grey,
                  ),
                  text: "Confirm Password",
                ),
                SizedBox(
                  height: 40.0,
                ),
                DefaultButton(
                  text: "Sign Up",
                  function: () {
                    if (formkey.currentState!.validate()) {
                      print(UserController.text);
                      print(passController.text);
                    }
                  },
                ),
                SizedBox(
                  height: 20.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    DefaultText(
                      text: "Already have an account?",
                      textColor: TextColor,
                      FontWeight: FontWeight.normal,
                      FontSize: 15.0,
                    ),
                    SizedBox(
                      width: 5.0,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => LogIn(),
                            ));
                      },
                      child: Column(
                        children: [
                          DefaultText(
                            text: "SIGN IN",
                            textColor: TextColor,
                            FontWeight: FontWeight.bold,
                            FontSize: 15.0,
                          ),
                          SizedBox(
                            height: 1,
                            width: 55,
                            child: Divider(
                              color: TextColor,
                              thickness: 1,
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
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
