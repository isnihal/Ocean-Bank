import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SendMoney extends StatefulWidget {
  @override
  _SendMoneyState createState() => _SendMoneyState();
}

class _SendMoneyState extends State<SendMoney> {
  @override
  Widget build(BuildContext context) {

    ScreenUtil.init(context, designSize: Size(375, 812), allowFontScaling: true);

    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.only(
              top: ScreenUtil().setHeight(54),
              left: ScreenUtil().setWidth(18)
            ),
            child: Row(
              children: [
                IconButton(
                  icon: Icon(Icons.arrow_back_rounded),
                  onPressed: (){

                  },
                ),
                SizedBox(width: ScreenUtil().setWidth(16),),
                Text("Send Money",style: TextStyle(color: Colors.black87,fontWeight: FontWeight.w600,fontSize: 18),)
              ],
            ),
            width: double.infinity,
          ),
          Expanded(child: Container()),
          RaisedButton(
            padding: const EdgeInsets.all(0.0),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(60)),
            onPressed: (){
              setState(() {

              });
            },
            child: Container(
              width: ScreenUtil().setWidth(237),
              height: ScreenUtil().setHeight(56),
              padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(60),
                gradient: LinearGradient(
                  colors: <Color>[
                    Color(0xFFE8D73F),
                    Color(0xFFF5A84E),
                  ],
                ),
              ),
              child: Center(child: Text("Confirm",style: TextStyle(color: Colors.white),)),
            ),
          ),
          SizedBox(height: ScreenUtil().setHeight(66),)
        ],
      ),
    );
  }
}
