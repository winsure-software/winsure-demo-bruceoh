import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ScreenUtil.instance = ScreenUtil(width: 750, height: 1334)..init(context);

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
      body: ListView(
        children: <Widget>[
          Container(
            width: ScreenUtil.instance.width,
            height: ScreenUtil.instance.setHeight(480),
            color: Colors.lightGreen,
            child: Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    height: ScreenUtil.instance.setHeight(60),
                  ),
                  Text(
                    "윈슈어 고객님",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 24),
                  ),
                  Text(
                    "어떤 보험이 필요하세요?",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 24),
                  ),
                  SizedBox(
                    height: ScreenUtil.instance.setHeight(50),
                  ),
                  Container(
                    width: ScreenUtil.instance.setWidth(670),
                    height: ScreenUtil.instance.setHeight(80),
                    child: RaisedButton(
                      color: Colors.red,
                      child: Text(
                        "내게 맞는 보험 찾기",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      onPressed: () {},
                    ),
                  ),
                  SizedBox(
                    height: ScreenUtil.instance.setHeight(16),
                  ),
                  Container(
                    width: ScreenUtil.instance.setWidth(670),
                    height: ScreenUtil.instance.setHeight(80),
                    child: RaisedButton(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(0),
                        side: BorderSide(color: Colors.red),
                      ),
                      child: Text("최근 조회한 설계사 찾기",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold)),
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            height: ScreenUtil.instance.setHeight(20.0),
            color: Colors.grey[400],
          ),
          Container(
            height: ScreenUtil.instance.setHeight(100),
            color: Colors.indigoAccent,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Icon(
                        Icons.gps_fixed,
                        color: Colors.white,
                        size: 24,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "서울특별시 송파구 문정2동",
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: Container(
                    width: ScreenUtil.instance.setWidth(180),
                    height: ScreenUtil.instance.setHeight(50),
                    child: RaisedButton(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(10),
                        side: BorderSide(color: Colors.red),
                      ),
                      child: Text("지역 변경",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold)),
                      onPressed: () {},
                    ),
                  ),
                ),
              ],
            ),
          ),
          GridView.count(
            shrinkWrap: true,
            physics: ScrollPhysics(),
            // Create a grid with 2 col,umns. If you change the scrollDirection to
            // horizontal, this would produce 2 rows.
            crossAxisCount: 2,
            // Generate 100 Widgets that display their index in the List
            children: List.generate(10, (index) {
              return BodyWidget(index.toString());
            }),
          ),
        ],
      ),
    );
  }
}

class BodyWidget extends StatelessWidget {
  final String name;

  BodyWidget(this.name);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      child: Image.asset(
        'assets/images/appIcon.png',
        fit: BoxFit.contain,
      ),
      alignment: Alignment.center,
    );
  }
}
