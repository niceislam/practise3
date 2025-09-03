import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'app/home_screen.dart';
import 'app/item_add.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
