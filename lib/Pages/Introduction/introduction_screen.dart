import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:wallet/components/constants.dart';

class Introduction extends StatefulWidget {
  static String id = 'IntroductionScreen';
  @override
  _IntroductionScreenState createState() => _IntroductionScreenState();
}
class _IntroductionScreenState extends State<Introduction> {
  @override
  Widget build(BuildContext context) {
    return  IntroductionScreen(
      globalBackgroundColor: Colors.white,
      onDone: () {
        Navigator.pushNamed(context,"SignUp");
      },
      showSkipButton: true,
      showNextButton: true,
      animationDuration: 1000,
      curve: Curves.fastOutSlowIn,
      dotsDecorator: DotsDecorator(
          spacing: EdgeInsets.all(5),
          activeColor: MainColor,
          activeSize: Size(20, 10),
          size: Size.square(10),
          activeShape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25)
          )
      ),

      skip: Center(
          child: Text('Skip', style: TextStyle(color: MainColor,
              fontSize: 20,
              fontWeight: FontWeight.bold),)),

      next: Icon(Icons.navigate_next, size: 30, color: MainColor,),

      done: Center(
          child: Text('Done', style: TextStyle(color: MainColor,
              fontSize: 20,
              fontWeight: FontWeight.bold),)),


      pages: [
        PageViewModel(
            titleWidget: Text("Smart payment,make \n       smart lifestyle",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0,color: TitleColor),),

            bodyWidget: Center(
                child: Text(
                  "Lorem lpsum has been the industry\'s \n standard dummy text ever", textAlign: TextAlign.center
                  , style: TextStyle(color: TextColor, fontSize: 15.0
                ),
                )
            ),
            image: SvgPicture.asset("assets/images/intro1.svg",),
        ),
        PageViewModel(
          titleWidget: Text("All payment in one place,\n       no card only booki",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0,color: TitleColor),),

          bodyWidget: Center(
              child: Text(
                "Lorem lpsum has been the industry\'s \n standard dummy text ever", textAlign: TextAlign.center
                , style: TextStyle(color: TextColor, fontSize: 15.0
              ),
              )
          ),

            image: SvgPicture.asset("assets/images/intro2.svg",),
        ),
        PageViewModel(
          titleWidget: Text("We don\'t any compromise\n           with security",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0,color: TitleColor),),

          bodyWidget: Center(
              child: Text(
                "Lorem lpsum has been the industry\'s \n standard dummy text ever", textAlign: TextAlign.center
                , style: TextStyle(color: TextColor, fontSize: 15.0
              ),
              )
          ),
          image: SvgPicture.asset("assets/images/intro3.svg",),
        ),


      ],

    );
  }
}