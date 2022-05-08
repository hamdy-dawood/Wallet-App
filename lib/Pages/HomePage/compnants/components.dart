import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';
import 'package:wallet/components/constants.dart';

Widget DefaultContainer({
  double height = 90.0,
  double width = 80.0,
  required String text,
  required SvgPicture svgPicture,
}) =>
    Container(
        height: height,
        width: width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            svgPicture,
            SizedBox(
              height: 5,
            ),
            Text(text),
          ],
        ),
        decoration: ContainerStyle());
