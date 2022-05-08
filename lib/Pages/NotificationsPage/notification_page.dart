import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:wallet/Pages/NotificationsPage/components/components.dart';
import 'package:wallet/components/constants.dart';


class NotificationPage extends StatelessWidget {
  const NotificationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: BackgroundColor,
      appBar: DefaultAppBar(
        Title: "Notification",
          function: (){}
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              NotificatinRow(
                image: AssetImage("assets/images/person7.jpg"),
                name: "Hassan Katarya",
                description: "is simply dummy text of the printing and typesetting industry",
                time: "4 hours ago",
              ),
              NotificatinRow(
                image: AssetImage("assets/images/person8.jpg"),
                name: "Hassan Shafeek",
                description: "is simply dummy text of the printing and typesetting industry",
                time: "4 hours ago",
              ),
              NotificatinRow(
                image: AssetImage("assets/images/person5.jpg"),
                name: "Mostafa Ayman",
                description: "is simply dummy text of the printing and typesetting industry",
                time: "4 hours ago",
              ),
              NotificatinRow(
                image: AssetImage("assets/images/person1.jpg"),
                name: "Zahra Hamdy",
                description: "is simply dummy text of the printing and typesetting industry",
                time: "4 hours ago",
              ),
              NotificatinRow(
                image: AssetImage("assets/images/person4.jpg"),
                name: "Shimaa Dawood",
                description: "is simply dummy text of the printing and typesetting industry",
                time: "4 hours ago",
              ),
              NotificatinRow(
                image: AssetImage("assets/images/person2.jpg"),
                name: "Soha Elsayed",
                description: "is simply dummy text of the printing and typesetting industry",
                time: "4 hours ago",
              ),
              NotificatinRow(
                image: AssetImage("assets/images/person3.jpg"),
                name: "Mariam Hussein",
                description: "is simply dummy text of the printing and typesetting industry",
                time: "4 hours ago",
              ),
              NotificatinRow(
                image: AssetImage("assets/images/person1.jpg"),
                name: "Smsmaa",
                description: "is simply dummy text of the printing and typesetting industry",
                time: "4 hours ago",
              ),
              NotificatinRow(
                image: AssetImage("assets/images/person6.jpg"),
                name: "Friends",
                description: "is simply dummy text of the printing and typesetting industry",
                time: "4 hours ago",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
