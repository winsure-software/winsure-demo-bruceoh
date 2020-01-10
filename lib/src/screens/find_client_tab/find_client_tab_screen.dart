import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class FindClientTabScreen extends StatefulWidget {
  FindClientTabScreen({Key key}) : super(key: key);

  @override
  _FindClientTabScreenState createState() => _FindClientTabScreenState();
}

class _FindClientTabScreenState extends State<FindClientTabScreen> {
  Completer<GoogleMapController> _controller = Completer();
  static final CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(37.521642, 127.017847),
    zoom: 14.4746,
  );

  static final CameraPosition _kLake = CameraPosition(
      bearing: 192.8334901395799,
      target: LatLng(37.43296265331129, -122.08832357078792),
      tilt: 59.440717697143555,
      zoom: 19.151926040649414);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                children: <Widget>[
                  SizedBox(
                    width: ScreenUtil.instance.setWidth(10),
                  ),
                  Icon(
                    Icons.search,
                    color: Colors.black,
                  ),
                  SizedBox(
                    width: ScreenUtil.instance.setWidth(10),
                  ),
                  Text(
                    "서울특별시 송파구 문정2동",
                    style: TextStyle(color: Colors.black),
                  )
                ],
              ),
              Icon(
                Icons.menu,
                color: Colors.grey,
              )
            ],
          ),
        ),
        body: Column(
          children: <Widget>[
            Expanded(
              child: Stack(
                children: <Widget>[
                  GoogleMap(
                    mapType: MapType.normal,
                    myLocationButtonEnabled: false,
                    initialCameraPosition: _kGooglePlex,
                    onMapCreated: (GoogleMapController controller) {
                      _controller.complete(controller);
                    },
                  ),
                  Container(
                    color: Colors.grey[300].withOpacity(0.7),
                    width: ScreenUtil.instance.width,
                    height: ScreenUtil.instance.setHeight(100),
                    child: Row(
                      children: <Widget>[
                        SizedBox(width: ScreenUtil.instance.setWidth(40)),
                        MaterialButton(
                          height: ScreenUtil.instance.setHeight(70),
                          minWidth: ScreenUtil.instance.setWidth(150),
                          shape: RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(24.0),
                            side: BorderSide(color: Colors.red),
                          ),
                          color: Colors.white,
                          child: Row(
                            children: <Widget>[
                              Icon(Icons.filter_list),
                              Text("필터")
                            ],
                          ),
                          onPressed: () {},
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: ScreenUtil.instance.width,
              height: ScreenUtil.instance.setHeight(90),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left: 12),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text("전체 설계사 23 명",),
                        SizedBox(
                          width: ScreenUtil.instance.setWidth(15),
                        ),
                        Text("프리미엄 3명 일반 20명", style:TextStyle(color: Colors.black.withOpacity(0.6),))
                      ],
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: Icon(Icons.arrow_upward, color: Colors.red,),
                  )

                ],
              ),
            ),
            
          ],
        )
        // body: GoogleMap(
        //   mapType: MapType.normal,
        //   initialCameraPosition: _kGooglePlex,
        //   onMapCreated: (GoogleMapController controller) {
        //     _controller.complete(controller);
        //   },
        // ),
        // floatingActionButton: FloatingActionButton.extended(
        //   onPressed: _goToTheLake,
        //   label: Text('To the lake!'),
        //   icon: Icon(Icons.directions_boat),
        // ),
        );
  }

  Future<void> _goToTheLake() async {
    final GoogleMapController controller = await _controller.future;
    controller.animateCamera(CameraUpdate.newCameraPosition(_kLake));
  }
}
