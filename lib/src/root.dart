import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:winsure_demo/src/screens/route_generator.dart';
import 'data/counter.dart';


class WinsureApp extends StatelessWidget {

  final GlobalKey<NavigatorState> _key = GlobalKey<NavigatorState>();


  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      child: MaterialApp(
        onGenerateRoute: RouteGenerator.generateRoute,
        initialRoute: '/',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
      ),
      providers: <SingleChildCloneableWidget>[
        ChangeNotifierProvider(
          create: (_) => Counter(),
        )
      ],
    );
  }
}


