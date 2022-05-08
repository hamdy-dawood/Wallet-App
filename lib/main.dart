import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:wallet/Account/LogInPage/logIn_page.dart';
import 'package:wallet/Pages/HomePage/Donations/baheya_donations.dart';
import 'package:wallet/Pages/HomePage/Donations/donations.dart';
import 'package:wallet/Pages/HomePage/Donations/gift.dart';
import 'package:wallet/Pages/HomePage/Donations/magdy_donations.dart';
import 'package:wallet/Pages/HomePage/Payment/PaymentPage.dart';
import 'package:wallet/Pages/HomePage/ReceiveMoney/Receive_money.dart';
import 'package:wallet/Pages/HomePage/SendMoney/Send_page.dart';
import 'package:wallet/Pages/HomePage/home_page.dart';
import 'package:wallet/Pages/HomePage/navigationBar.dart';
import 'package:wallet/Pages/Introduction/introduction_screen.dart';
import 'package:wallet/Pages/SplashScreen/splash_screen.dart';
import 'Account/Fingerprint/fingerprint_page.dart';
import 'Account/ForgetPassword/forgetpass_page.dart';
import 'Account/SignupPage/signup_page.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: true,
      tools: [
        ...DevicePreview.defaultTools,
      ],
      builder: (context) => const Wallet(),
    ),
  );
}

class Wallet extends StatefulWidget {
  const Wallet({Key? key}) : super(key: key);

  @override
  _WalletState createState() => _WalletState();
}

class _WalletState extends State<Wallet> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'Spalsh_Screen',
      routes: {
        'Spalsh_Screen': (context) => Spalsh_Screen(),
        'Introduction': (context) => Introduction(),
        'MainPage': (context) => NavigationBar(),
        'HomePage': (context) => HomePage(),
        'SignUp': (context) => SignUp(),
        'LogIn': (context) => LogIn(),
        'ForgetPass': (context) => ForgetPass(),
        'Fingerprint': (context) => Fingerprint(),
        'SendMoney': (context) => SendMoney(),
        'ReceiveMoney': (context) => ReceiveMoney(),
        'Payment': (context) => Payment(),
        'Donations': (context) => Donations(),
        'Gift': (context) => Gift(),
        'Magdy': (context) => Magdy(),
        'Baheya': (context) => Baheya(),
        // 'MainDrawer':(context)=>MainDrawer(),
      },
    );
  }
}
