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
                icon: Icon(Icons.menu),
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
        body: Container(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 7),
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 255, 102, 82),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Text(
                  'ক্যাম্পাস থেকে বাস ছাড়ার সময়ঃ',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 17,
                      color: Colors.white),
                  textAlign: TextAlign.center,
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(10, 10, 10, 0),
                child: Text(
                  'সকাল ৮.১০, সকাল ৯.১০, সকাল ১১.১০, দুপুর ১.৩০, দুপুর ৩.৩০, বিকেল ৫.১০, সন্ধ্যা ৭.১০(মেডিকেল মোড়)',
                  style: TextStyle(fontSize: 15),
                ),
              ),
              SizedBox(
                height: 180,
              ),
              Container(
                child: Center(
                  child: Text('Bus Location'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
