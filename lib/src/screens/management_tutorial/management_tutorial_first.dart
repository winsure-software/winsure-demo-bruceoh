import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ManagementTutorialFirst extends StatefulWidget {
  ManagementTutorialFirst({Key key}) : super(key: key);

  @override
  _ManagementTutorialFirstState createState() =>
      _ManagementTutorialFirstState();
}

class _ManagementTutorialFirstState extends State<ManagementTutorialFirst> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.white,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Image.asset(
                'assets/images/imgLogo.png',
                fit: BoxFit.contain,
                height: 24.0,
              ),
              Icon(Icons.menu, color: Colors.grey)
            ],
          )),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 30, right: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    height: ScreenUtil.instance.setHeight(80),
                  ),
                  Text(
                    "STEP 1",
                    style: TextStyle(
                      color: Colors.grey,
                        decoration: TextDecoration.underline, fontSize: 24),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Text("회원님의 성별은", style: TextStyle(fontSize: 28)),
                  Text("어떻게 되시나요?", style: TextStyle(fontSize: 28)),
                  SizedBox(
                    height: 40,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      _circularManButton(),
                      SizedBox(
                        width: 36,
                      ),
                      _circularWomanButton()
                    ],
                  )
                ],
              ),
            ),
          ),
          Container(
            width: ScreenUtil.instance.width,
            height: ScreenUtil.instance.setHeight(100),
            color: Colors.red,
            child: FlatButton(
              child: Text("다음", style: TextStyle(fontSize: 18, color: Colors.white),),
              onPressed: () {
                Navigator.pushNamed(context, '/management_tutorial_second');
              },
            ),
          )
        ],
      ),
    );
  }
}

Widget _circularManButton() {
  return Container(
    width: 140,
    height: 140,
    child: RaisedButton(
      color: Colors.white,
      highlightColor: Colors.red,
      focusColor: Colors.red,
      shape: CircleBorder(
          side: BorderSide(
              color: Colors.red, width: 1.0, style: BorderStyle.solid)),
      child: Text("남자",style: TextStyle(fontSize: 18, color: Colors.black)),
      onPressed: () {},
    ),
  );
}

Widget _circularWomanButton() {
  return Container(
    width: 140,
    height: 140,
    child: RaisedButton(
      color: Colors.red,
      highlightColor: Colors.white,
      shape: CircleBorder(
          side: BorderSide(
              color: Colors.red, width: 1.0, style: BorderStyle.solid)),
      child: Text("여자",style: TextStyle(fontSize: 18, color: Colors.white)),
      onPressed: () {
        
      },
    ),
  );
}
