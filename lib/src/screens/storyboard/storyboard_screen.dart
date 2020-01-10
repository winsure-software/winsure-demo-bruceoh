import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class StoryBoardScreen extends StatefulWidget {
  StoryBoardScreen({Key key}) : super(key: key);

  @override
  _StoryBoardScreenState createState() => _StoryBoardScreenState();
}

class _StoryBoardScreenState extends State<StoryBoardScreen> {
  final List<int> _tempList = [0 , 1, 2, 3, 4];

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
      body: Padding(
        padding: const EdgeInsets.only(left: 16, right: 16),
        child: ListView(
          children: <Widget>[
            SizedBox(
              height: ScreenUtil.instance.setHeight(42),
            ),
            Container(
              color: Colors.grey[200],
              child: TextFormField(
                decoration: InputDecoration(
                    suffixIcon: Icon(
                      Icons.search,
                      size: 28,
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.red, width: 2)),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white24),
                    ),
                    hintText: "키워드를 입력하세요"),
              ),
            ),
            SizedBox(
              height: ScreenUtil.instance.setHeight(36),
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: _tempList.length,
              itemBuilder: (BuildContext context, int index) {
              return _storyboardContent();
            },

            )
          ],
        ),
      ),
    );
  }
}

Widget _storyboardContent() {
  return Container(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text("Title", style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold), ),
        Padding(
          padding: const EdgeInsets.only(top: 3, bottom: 10),
          child: Text("Subtitle", style: TextStyle(color: Colors.grey,)),
        ),
        Center(
          child: Image.asset(
            'assets/images/contentExample.png',
            fit: BoxFit.contain,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 12),
          child: Text(
            "Spanish is a part of the Ibero-Romance group of languages, which evolved from several dialects of Vulgar Latin in Iberia after the collapse of the Western Roman Empire in the 5th century. The oldest Latin texts with traces of Spanish come from mid-northern Iberia in the 9th century."),
        ),
        SizedBox(height: 16,)
      ],
    ),
  );
}
