import 'package:flutter/material.dart';

class AboutBrur extends StatelessWidget {
  const AboutBrur({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(),
        body: Center(
          child: Text('About BRUR'),
        ),
      ),
    );
  }
}
