import 'package:flutter/material.dart';

class AboutAppDeveloper extends StatelessWidget {
  const AboutAppDeveloper({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(),
        body: Center(
          child: Text('About App Developer'),
        ),
      ),
    );
  }
}
