import 'package:brur_bus/about_app_developer.dart';
import 'package:brur_bus/about_brur.dart';
import 'package:brur_bus/about_cse_dept.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            title: Text('🚌 BRUR BUS'),
            actions: [
              PopupMenuButton(
                  itemBuilder: (BuildContext context) => [
                        PopupMenuItem(
                          child: Text('About University'),
                          value: 1,
                        ),
                        PopupMenuItem(
                          child: Text('About CSE Department'),
                          value: 2,
                        ),
                        PopupMenuItem(
                          child: Text('About App Developer'),
                          value: 3,
                        ),
                      ],
                  onSelected: (value) {
                    switch (value) {
                      case 1:
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => AboutBrur()),
                        );
                        break;
                      case 2:
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => AboutCseDept(),
                          ),
                        );
                        break;

                      case 3:
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => AboutAppDeveloper(),
                          ),
                        );
                        break;
                    }
                  }),
            ],
          ),
          body: Column(
            children: [
              Text('Bus Route'),
              Padding(
                padding: EdgeInsets.all(16),
                child: Text('Route No-01:'),
              ),
              Padding(
                padding: EdgeInsets.all(16),
                child: Text('Route No-02:'),
              ),
              Padding(
                padding: EdgeInsets.all(16),
                child: Text('Route No-03:'),
              ),
              Padding(
                padding: EdgeInsets.all(16),
                child: Text('Route No-04:'),
              ),
              Padding(
                padding: EdgeInsets.all(16),
                child: Text('Route No-05:'),
              ),
            ],
          )),
    );
  }
}
