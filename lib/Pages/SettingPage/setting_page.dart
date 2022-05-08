import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:wallet/components/constants.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'components/components.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: BackgroundColor,
      appBar: DefaultAppBar(
        Title: "Setting",
          function: (){}
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 10.0,
              ),
              Row(
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage("assets/images/user.jpg"),
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Hamdy Dawood",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 10.0,
              ),
              Divider(
                thickness: 1,
              ),
              SizedBox(
                height: 10.0,
              ),
              SettingRow(
                icon: FontAwesomeIcons.key,
                name: "Account",
                details: "Privacy,security,change number",
              ),
              SizedBox(
                height: 20.0,
              ),
              SettingRow(
                icon: FontAwesomeIcons.solidBell,
                name: "Push notification",
                details: "message,sent,recive",
              ),
              SizedBox(
                height: 20.0,
              ),
              SettingRow(
                icon: FontAwesomeIcons.circleNotch,
                name: "Storage \& data",
                details: "Network,usage,auto download",
              ),
              SizedBox(
                height: 20.0,
              ),
              SettingRow(
                icon: FontAwesomeIcons.questionCircle,
                name: "Help \& info",
                details: "Help center,contact us,privacy police",
              ),
              SizedBox(
                height: 20.0,
              ),
              SettingRow(
                icon: FontAwesomeIcons.userFriends,
                name: "Invite friend",
                details: "",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
