import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:wallet/components/constants.dart';

Widget DefaultShopContainer(
{
  required Image image,
  required String name,
  required String price,
}
    ) => Stack(children: [
      Container(
        height: 170.0,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Container(
                  width: double.infinity,
                  child: image,
                ),
              ),
              Row(
                children: [
                  Container(
                      child:
                          SvgPicture.asset("assets/icons/Rating 5 stars.svg")),
                  Spacer(),
                  Expanded(
                    child: Container(
                        child: SvgPicture.asset("assets/icons/Favorite.svg")),
                  )
                ],
              ),
              SizedBox(
                height: 5,
              ),
              DefaultText(
                FontWeight: FontWeight.normal,
                text: name,
                textColor: TextColor,
                FontSize: 15.0
              ),
              SizedBox(
                height: 10.0,
              ),
              DefaultText(
                  FontWeight: FontWeight.bold,
                  text: price,
                  textColor: TitleColor,
                  FontSize: 15.0
              ),
              SizedBox(
                height: 10.0,
              ),
            ],
          ),
        ),
        decoration: ContainerStyle(),
      ),
      Positioned(
        bottom: 0,
        right: 0,
        child: Container(
          height: 50.0,
          width: 50.0,
          decoration: BoxDecoration(
            color: BackgroundColor,
            borderRadius: BorderRadius.circular(10.0),
            boxShadow: [
              BoxShadow(
                  blurRadius: 5.0,
                  color: Colors.grey.shade300,
                  offset: Offset(-2.0, -2.0)),
            ],
          ),
        ),
      ),
      Positioned(
          bottom: 7,
          right: 7,
          child: Container(
            height: 35.0,
            width: 35.0,
            child: SvgPicture.asset("assets/icons/add to card.svg"),
          )),
    ]);
