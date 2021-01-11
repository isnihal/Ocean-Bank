import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

enum TRANSFER_METHOD{
  QUICK_TRANSFER,
  NORMAL
}

class SendMoney extends StatefulWidget {
  @override
  _SendMoneyState createState() => _SendMoneyState();
}

class _SendMoneyState extends State<SendMoney> {

  TRANSFER_METHOD currentTransferMethod = TRANSFER_METHOD.QUICK_TRANSFER;

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
              mainAxisAlignment: MainAxisAlignment.start,
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
          Container(
            height: ScreenUtil().setHeight(482),
            width: double.infinity,
            margin: EdgeInsets.only(
              left: ScreenUtil().setWidth(9),
              top: ScreenUtil().setHeight(64),
              bottom: ScreenUtil().setHeight(64)
            ),
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0xFF1C162E),
                        boxShadow: [BoxShadow(
                          color: Colors.black,
                          blurRadius: 1.0,
                        ),]
                    ),
                    height: ScreenUtil().setHeight(482),
                    width: ScreenUtil().setWidth(112),
                  ),
                ),
                SizedBox(width: ScreenUtil().setWidth(24),),
                Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Container(
                        width: ScreenUtil().setWidth(198),
                        height: ScreenUtil().setHeight(100),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            boxShadow: [BoxShadow(
                              color: Colors.black,
                              blurRadius: 1.0,
                            ),]
                        ),
                        child: Padding(
                          padding: EdgeInsets.only(
                            top: ScreenUtil().setHeight(28),
                            left: ScreenUtil().setWidth(16)
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Send",style: TextStyle(color: Colors.black,fontSize: 14,fontWeight: FontWeight.w500),),
                              SizedBox(height: ScreenUtil().setHeight(8),),
                              Row(
                                children: [
                                  Text("999",style: TextStyle(fontSize: 26,fontWeight: FontWeight.w600,color: Color(0xFFE8D73F)),),
                                  Text(".00",style: TextStyle(fontSize: 26,fontWeight: FontWeight.w600,color: Color(0xFFE0E0E0)))
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: ScreenUtil().setHeight(18),),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Container(
                        width: ScreenUtil().setWidth(198),
                        height: ScreenUtil().setHeight(276),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            boxShadow: [BoxShadow(
                              color: Colors.black,
                              blurRadius: 1.0,
                            ),]
                        ),
                        child: Padding(
                          padding: EdgeInsets.only(
                              top: ScreenUtil().setHeight(28),
                              left: ScreenUtil().setWidth(16)
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("You have transferred the most amount of money to Glenn Philips, a total of \$888",style: TextStyle(color: Colors.black87,height: ScreenUtil().setHeight(2),fontSize: 16,fontWeight: FontWeight.w600),)
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: ScreenUtil().setHeight(18),),
                    Row(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: currentTransferMethod!=TRANSFER_METHOD.QUICK_TRANSFER? Container(
                            width: ScreenUtil().setWidth(92),
                            height: ScreenUtil().setHeight(70),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                boxShadow: [BoxShadow(
                                  color: Colors.black,
                                  blurRadius: 1.0,
                                ),]
                            ),
                          ):
                          Container(
                            width: ScreenUtil().setWidth(92),
                            height: ScreenUtil().setHeight(70),
                            child: RaisedButton(
                              color: Colors.white,
                              onPressed: (){},
                              child: Padding(
                                padding: EdgeInsets.only(
                                    top: ScreenUtil().setHeight(18),

                                ),
                                child: Text("Quick Transfer"),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: ScreenUtil().setWidth(14),),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: currentTransferMethod==TRANSFER_METHOD.NORMAL?Container(
                            width: ScreenUtil().setWidth(92),
                            height: ScreenUtil().setHeight(70),
                            child: RaisedButton(
                              color: Colors.white,
                              onPressed: (){},
                              child: Padding(
                                padding: EdgeInsets.only(
                                  top: ScreenUtil().setHeight(18),
                                  left: 0
                                ),
                                child: Text("Normal"),
                              ),
                            ),
                          ):
                          Container(
                            width: ScreenUtil().setWidth(92),
                            height: ScreenUtil().setHeight(70),
                            child: RaisedButton(
                              color: Colors.white,
                              onPressed: (){},
                              child: Padding(
                                padding: EdgeInsets.only(
                                  top: ScreenUtil().setHeight(18),
                                    left: 0
                                ),
                                child: Text("Normal"),
                              ),
                            ),
                          ),
                        ),
                      ],
                    )

                  ],
                )
              ],
            ),
          ),
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
        ],
      ),
    );
  }
}
