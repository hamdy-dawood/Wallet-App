import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:wallet/components/constants.dart';

Widget SettingRow({
  required IconData icon,
  required String name,
  required String details,
  Color IconColor = TitleColor,
}) =>
    Row(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Icon(
            icon,
            color: IconColor,
          ),
        ),
        SizedBox(
          width: 20.0,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            DefaultText(
              text: name,
              textColor: TitleColor,
              FontWeight: FontWeight.bold,
              FontSize: 20.0,
            ),
            SizedBox(
              height: 10.0,
            ),
            DefaultText(
              text: details,
              textColor: TextColor,
              FontWeight: FontWeight.normal,
              FontSize: 12.0,
            ),
          ],
        ),
      ],
    );
