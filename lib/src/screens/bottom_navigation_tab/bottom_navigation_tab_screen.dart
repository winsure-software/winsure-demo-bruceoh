import 'package:flutter/material.dart';
import 'package:winsure_demo/src/screens/find_client_tab/find_client_tab_screen.dart';
import 'package:winsure_demo/src/screens/home/home_screen.dart';
import 'package:winsure_demo/src/screens/management_tutorial/management_tutorial_first.dart';
import 'package:winsure_demo/src/screens/management_tutorial/management_tutorial_second.dart';
import 'package:winsure_demo/src/screens/storyboard/storyboard_screen.dart';

class BottomNavigationTabScreen extends StatefulWidget {
  BottomNavigationTabScreen({Key key}) : super(key: key);

  @override
  _BottomNavigationTabScreenState createState() =>
      _BottomNavigationTabScreenState();
}

class _BottomNavigationTabScreenState extends State<BottomNavigationTabScreen> {
  int _selectedIndex = 0;

  final navigatorKey = GlobalKey<NavigatorState>();


  final List<Widget> _tabList = <Widget>[
    HomeScreen(),
    FindClientTabScreen(),
    ManagementTutorialFirst(),
    StoryBoardScreen(),
    ManagementTutorialSecond(),
    
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor:
            MediaQuery.of(context).platformBrightness == Brightness.dark
                ? Colors.grey[900]
                : null,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.date_range),
            title: _selectedIndex == 0 ? Text('History') : Text(''),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.directions_run),
            title: _selectedIndex == 1 ? Text('Run') : Text(''),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            title: _selectedIndex == 2 ? Text('Profile') : Text(''),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.map),
            title: _selectedIndex == 3 ? Text('Map') : Text(''),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message),
            title: _selectedIndex == 4 ? Text('Message') : Text(''),
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
        top: false,
        child: _tabList.elementAt(_selectedIndex),
        
        
      ),
    );
  }
}

class EmptyScreen extends StatelessWidget {
  const EmptyScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
