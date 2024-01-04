import 'package:flutter/material.dart';

class DefaultLayout extends StatelessWidget {
  final String title;
  final Widget body;
  final List<Widget>? actoins;

  const DefaultLayout(
      {required this.title, required this.body, this.actoins, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        actions: actoins,
      ),
      body:
          Padding(padding: EdgeInsets.symmetric(horizontal: 16.0), child: body),
    );
  }
}
