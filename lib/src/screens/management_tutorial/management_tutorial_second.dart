import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ManagementTutorialSecond extends StatefulWidget {
  ManagementTutorialSecond({Key key}) : super(key: key);

  @override
  _ManagementTutorialSecondState createState() =>
      _ManagementTutorialSecondState();
}

class _ManagementTutorialSecondState extends State<ManagementTutorialSecond> {
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
                        decoration: TextDecoration.underline,
                        fontSize: 24),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Text("회원님의 태어난 해는", style: TextStyle(fontSize: 28)),
                  Text("어떻게 되나요?", style: TextStyle(fontSize: 28)),
                  SizedBox(
                    height: 40,
                  ),
                  TextFormField(
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                        suffix: Text("년"),
                        alignLabelWithHint: true,
                        hintText: "예) 1990",
                        enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.red, width: 2)),
                        border: OutlineInputBorder()),
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
              child: Text(
                "다음",
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
              onPressed: () {},
            ),
          )
        ],
      ),
    );
  }
}
