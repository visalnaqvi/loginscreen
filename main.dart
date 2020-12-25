import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:loginscreen/login.dart';
import 'package:loginscreen/signup.dart';
import 'sizeconfig.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
        body: SingleChildScrollView(
      physics: AlwaysScrollableScrollPhysics(),
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                height: SizeConfig.screenHeight,
                width: SizeConfig.screenWidth,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [Colors.green[200], Colors.greenAccent],
                      stops: [0.1, 0.9]),
                ),
              ),
              Positioned(
                left: SizeConfig.widthPercentage * 10,
                top: SizeConfig.heightPercentage * 15,
                child: Container(
                  height: SizeConfig.heightPercentage * 78,
                  width: SizeConfig.widthPercentage * 80,
                  decoration: BoxDecoration(boxShadow: [
                    BoxShadow(
                        blurRadius: SizeConfig.heightPercentage * 2,
                        spreadRadius: SizeConfig.heightPercentage * 1,
                        color: Colors.black26)
                  ]),
                  child: DefaultTabController(
                    length: 2,
                    child: Scaffold(
                      appBar: PreferredSize(
                        preferredSize:
                            Size.fromHeight(SizeConfig.heightPercentage * 10),
                        child: TabBar(
                          indicatorColor: Colors.greenAccent,
                          indicatorWeight: 1,
                          tabs: [
                            Tab(
                              child: Text(
                                "Login",
                                style: TextStyle(color: Colors.green[200]),
                              ),
                            ),
                            Tab(
                              child: Text('SignUp',
                                  style: TextStyle(color: Colors.green[200])),
                            ),
                          ],
                        ),
                      ),
                      backgroundColor: Colors.white70,
                      body: TabBarView(
                        children: [Login(), SignUp()],
                      ),
                    ),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    ));
  }
}
