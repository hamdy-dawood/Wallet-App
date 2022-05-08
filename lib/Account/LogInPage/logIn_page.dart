import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:wallet/Account/ForgetPassword/forgetpass_page.dart';
import 'package:wallet/Account/SignupPage/signup_page.dart';
import 'package:wallet/Pages/HomePage/navigationBar.dart';
import 'package:wallet/components/constants.dart';

class LogIn extends StatelessWidget {
  LogIn({Key? key}) : super(key: key);
  var formkey = GlobalKey<FormState>();
  var UsernameController = TextEditingController();
  var passwordController = TextEditingController();

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
                  text: "login to your account",
                  textColor: TitleColor,
                  FontWeight: FontWeight.bold,
                  FontSize: 15.0,
                ),
                SizedBox(
                  height: 40.0,
                ),
                DefaultFormField(
                  controller: UsernameController,
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
                  controller: passwordController,
                  obscureText: true,
                  type: TextInputType.visiblePassword,
                  Validate: (value) {
                    if (value.isEmpty) {
                      return "Password must not be empty";
                    }
                    return null;
                  },
                  image: Image.asset(
                    "assets/icons/key.png",
                    color: Colors.grey,
                  ),
                  text: "Password",
                ),
                Container(
                  alignment: Alignment.bottomRight,
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ForgetPass(),
                          ));
                    },
                    child: DefaultText(
                      text: "Forget password ?",
                      textColor: Colors.red,
                      FontWeight: FontWeight.bold,
                      FontSize: 14.0,
                    ),
                  ),
                ),
                SizedBox(
                  height: 30.0,
                ),
                DefaultButton(
                  text: "Sign in",
                  function: () {
                    if (formkey.currentState!.validate()) {
                      print(UsernameController.text);
                      print(passwordController.text);
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
                      text: "Don\'t have an account?",
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
                              builder: (context) => SignUp(),
                            ));
                      },
                      child: Column(
                        children: [
                          DefaultText(
                            text: "SIGN UP",
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
