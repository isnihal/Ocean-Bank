import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

enum STATE{
  ONE,
  TWO,
  THREE,
  FOUR
}

class IntroPage extends StatefulWidget {
  @override
  _IntroPageState createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {

  STATE currentState = STATE.ONE;

  @override
  Widget build(BuildContext context) {

    ScreenUtil.init(context, designSize: Size(375, 812), allowFontScaling: true);

    return currentState==STATE.ONE?Scaffold(
      backgroundColor: Colors.white,
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Align(
              alignment: Alignment.topRight,
              child: Container(
                margin: EdgeInsets.only(
                  top: ScreenUtil().setHeight(100),
                  right: ScreenUtil().setWidth(36)
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text("Welcome to",style: TextStyle(color: Colors.black87,fontWeight: FontWeight.w600,fontSize: 24),),
                    SizedBox(height: ScreenUtil().setHeight(18),),
                    Text("Ocean Bank",style: TextStyle(color: Color(0xFF1AD5AD),fontWeight: FontWeight.w600,fontSize: 33),),
                    SizedBox(height: ScreenUtil().setHeight(36),),
                    Text("App that will help you to\nproperly manage your\nfinances",textAlign: TextAlign.end,style: TextStyle(color: Colors.grey,fontSize: 16,fontWeight: FontWeight.w300))
                  ],
                ),
              ),
            ),
            Container(
              height: ScreenUtil().setHeight(196),
              width: double.infinity,
              color: Color(0xFF1C162E),
              child: Center(
                child: SizedBox(
                  height: ScreenUtil().setHeight(56),
                  width: ScreenUtil().setWidth(133),
                  child: RaisedButton(
                    color: Color(0xFF1AD5AD),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(60)),
                    child: Text("Get Started",style: TextStyle(color: Colors.white),),
                    onPressed: (){
                      setState(() {
                        currentState=STATE.TWO;
                      });
                    },
                  ),
                ),
              ),
            ),
            Positioned(top: ScreenUtil().setHeight(205),
               child: Container(
                    width: ScreenUtil().setWidth(375),
                    height: ScreenUtil().setHeight(453),
                    decoration: new BoxDecoration(
                      image: new DecorationImage(
                        image: ExactAssetImage('assets/images/intro_one.png'),
                        fit: BoxFit.fill,
                      ),
                    ))
            )
          ],
        ),
      ),
    ):
    currentState==STATE.TWO?Scaffold(
      backgroundColor: Color(0xFF1C162E),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text("SET YOUR\nFINANCIAL GOALS"),
          Text("Your Goals will help us formulate the right\nrecommendations for success"),
          Container(
            width: ScreenUtil().setWidth(136),
            height: ScreenUtil().setHeight(56),
            child: RaisedButton(
              padding: const EdgeInsets.all(0.0),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(60)),
              onPressed: (){},
              child: Expanded(
                child: Container(
                  width: ScreenUtil().setWidth(136),
                  height: ScreenUtil().setHeight(56),
                  padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(60),
                    gradient: LinearGradient(
                      colors: <Color>[
                        Color(0xFF9D70FF),
                        Color(0xFF7460FF),
                      ],
                    ),
                  ),
                  child: Row(
                    children: [
                      Text("Next"),
                      Icon(Icons.arrow_right_alt_outlined,color: Colors.white,)
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    ):Scaffold();
  }
}
