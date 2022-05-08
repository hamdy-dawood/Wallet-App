import 'package:flutter/material.dart';
import 'package:wallet/components/constants.dart';

 Widget NotificatinRow({
  required AssetImage image,
  required String name,
  required String description,
  required String time,

}) =>
    Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0),
      child: Row(
        children: [
          CircleAvatar(
            radius: 35.0,
            backgroundImage: image,
          ),
          SizedBox(
            width: 10.0,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                DefaultText(
                  text: name,
                  textColor: TitleColor,
                  FontWeight: FontWeight.bold,
                  FontSize: 15.0
                ),
                SizedBox(
                  height: 5.0,
                ),

                DefaultText(
                    text: description,
                    textColor: TextColor,
                    FontWeight: FontWeight.normal,
                    FontSize: 13.0
                ),
                SizedBox(
                  height: 5.0,
                ),
                DefaultText(
                    text: time,
                    textColor: TextColor,
                    FontWeight: FontWeight.normal,
                    FontSize: 13.0
                ),
              ],
            ),
          ),
        ],
      ),
    );
