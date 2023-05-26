import 'package:flutter/material.dart';

class AboutCseDept extends StatelessWidget {
  const AboutCseDept({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(),
        body: Center(
          child: Text('About CSE Department'),
        ),
      ),
    );
  }
}
