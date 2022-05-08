import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

const BackgroundColor = Color(0xFFFEEEEEE);
const MainColor = Color(0xFF2196F3);
const purpleColor = Color(0xFF632EF1);
const DeeppurpleColor = Color(0xFF673AB7);
const TitleColor = Color(0xFF4D5A81);
const TextColor = Color(0xFF969EB9);
const SearchColor = Color(0xFFF0F3F9);

AppBar DefaultAppBar({
  required String Title,
  required VoidCallback function,
  double elevation = 0.0,
}) =>
    AppBar(
      leadingWidth: 50.0,
      elevation: elevation,
      backgroundColor: BackgroundColor,
      leading: GestureDetector(
          onTap: function,
          child: Icon(Icons.arrow_back_ios, color: TitleColor)),
      centerTitle: true,
      title: Text(Title),
      titleTextStyle: TextStyle(
          color: TitleColor, fontSize: 17.0, fontWeight: FontWeight.bold),
    );

Widget DefaultFormField({
  double height = 50.0,
  required Image image,
  required String text,
  required TextInputType type,
  required TextEditingController controller,
  required FormFieldValidator Validate,
  bool obscureText = false,
  double radius = 10.0,
}) =>
    TextFormField(
      obscureText: obscureText,
      keyboardType: type,
      controller: controller,
      onFieldSubmitted: (value) {
        print(value);
      },
      validator: Validate,
      decoration: InputDecoration(
        // border: InputBorder.none,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: BorderSide(color: Colors.grey),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: BorderSide(color: Colors.grey),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.grey),
          borderRadius: BorderRadius.circular(10.0),
        ),

        prefixIcon: ClipRRect(
          child: SizedBox(
            height: 15.0,
            width: 15.0,
            child: image,
          ),
        ),
        hintText: text,
        hintStyle: const TextStyle(color: TextColor, fontSize: 15.0),
      ),
    );

Widget DefaultButton({
  required String text,
  required VoidCallback function,
  double width = double.infinity,
  double raduis = 10.0,
}) =>
    GestureDetector(
      onTap: function,
      child: Container(
          height: 50.0,
          width: width,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(raduis),
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    MainColor,
                    purpleColor,
                  ])),
          child: Center(
            child: DefaultText(
              text: text,
              textColor: BackgroundColor,
              FontWeight: FontWeight.bold,
              FontSize: 15.0,
            ),
          )),
    );

Widget DefaultText({
  required String text,
  Color textColor = Colors.black,
  required FontWeight,
  required FontSize,
}) =>
    Text(
      text,
      style: TextStyle(
        color: textColor,
        fontWeight: FontWeight,
        fontSize: FontSize,
      ),
      maxLines: 2,
      overflow: TextOverflow.ellipsis,
    );

BoxDecoration ContainerStyle({
  Color backgroud = Colors.white,
  double raduis = 10.0,
}) =>
    BoxDecoration(
      color: backgroud,
      border: Border.all(color: Colors.grey.shade300),
      boxShadow: [
        BoxShadow(
            blurRadius: 2.0,
            color: Colors.grey.shade300,
            offset: Offset(1.0, 0.0)),
      ],
      borderRadius: BorderRadius.circular(raduis),
    );
