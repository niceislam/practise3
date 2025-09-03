import 'package:flutter/material.dart';

class DetailsScreeen extends StatelessWidget {
  const DetailsScreeen({super.key, required this.item});
  final String item;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Text(
          "${item}",
          style: TextStyle(color: Colors.black, fontSize: 18),
        ),
      ),
    );
  }
}
