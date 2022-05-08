import 'package:flutter/material.dart';
import 'package:wallet/components/constants.dart';

class Donations extends StatelessWidget {
  Donations({Key? key}) : super(key: key);

  var formkey = GlobalKey<FormState>();
  var SearchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: BackgroundColor,
      appBar: DefaultAppBar(
          Title: "Donations",
          function: (){
        Navigator.pop(context);
      }
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12.0),
        child: SingleChildScrollView(
          child: Form(
            key: formkey,
            child: Column(
              children: [
                SizedBox(
                  height: 10.0,
                ),
                DefaultFormField(
                  height: 55.0,
                  controller: SearchController,
                  type: TextInputType.text,
                  Validate: (value) {},
                  image: Image.asset(
                    "assets/icons/search.png",
                    color: Colors.grey,
                  ),
                  text: "Search",
                ),
                SizedBox(
                  height: 20.0,
                ),
                GestureDetector(
                  onTap: (){
                    Navigator.pushNamed(context,'Magdy');
                  },
                  child: Row(
                    children: [
                      DefaultText(
                        text: "Donations Now ",
                        textColor: Colors.blue,
                        FontWeight: FontWeight.bold,
                        FontSize: 15.0,
                      ),
                      Icon(Icons.arrow_forward_outlined,color: Colors.blue,)
                    ],
                  ),
                ),
                Container(
                  height: 150,
                  width: double.infinity,
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(10.0)),
                  child: Image.asset("assets/images/صناع الامل.png"),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Row(
                  children: [
                    DefaultText(
                      text: "Magdi yacoub",
                      textColor: TitleColor,
                      FontWeight: FontWeight.bold,
                      FontSize: 15.0,
                    ),
                  ],
                ),
                SizedBox(
                  height: 5.0,
                ),
                DefaultText(
                  text: "Lorem lpsum is simply dummy text of the printing and typesetting industry",
                  textColor: TextColor,
                  FontWeight: FontWeight.normal,
                  FontSize: 15.0,
                ),
                SizedBox(
                  height: 20.0,
                ),
                GestureDetector(
                  onTap: (){
                    Navigator.pushNamed(context,'Baheya');
                  },
                  child: Row(
                    children: [
                      DefaultText(
                        text: "Donations Now ",
                        textColor: Colors.blue,
                        FontWeight: FontWeight.bold,
                        FontSize: 15.0,
                      ),
                      Icon(Icons.arrow_forward_outlined,color: Colors.blue,)
                    ],
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Container(
                  height: 140,
                  width: double.infinity,
                  decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(10.0)),
                  child: Image.asset("assets/images/بهية.png",fit: BoxFit.cover),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Row(
                  children: [
                    DefaultText(
                      text: "Baheya",
                      textColor: TitleColor,
                      FontWeight: FontWeight.bold,
                      FontSize: 15.0,
                    ),
                  ],
                ),
                SizedBox(
                  height: 5.0,
                ),
                DefaultText(
                  text: "Lorem lpsum is simply dummy text of the printing and typesetting industry",
                  textColor: TextColor,
                  FontWeight: FontWeight.normal,
                  FontSize: 15.0,
                ),
                SizedBox(
                  height: 20.0,
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
