import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:listview_picker/app/widget.dart';

import 'item_details.dart';

class ItemAdd extends StatefulWidget {
  const ItemAdd({super.key});

  @override
  State<ItemAdd> createState() => _ItemAddState();
}

List b = [];

class _ItemAddState extends State<ItemAdd> {
  TextEditingController namecontroller = TextEditingController();
  TextEditingController semestercontroller = TextEditingController();
  TextEditingController imagecontroller = TextEditingController();
  TextEditingController detailscontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        centerTitle: true,
        title: Text(
          "Item add",
          style: TextStyle(
            color: Colors.white,
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
        child: Column(
          children: [
            Card(
              color: Colors.greenAccent,
              child: SizedBox(
                height: 260,
                width: MediaQuery.sizeOf(context).width,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ItemAddScreen(
                    namecontroller: namecontroller,
                    semestercontroller: semestercontroller,
                    imagecontroller: imagecontroller,
                    detailscontroller: detailscontroller,
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            SizedBox(
              height: 50,
              width: MediaQuery.sizeOf(context).width / 2,
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll(Colors.blue),
                ),
                onPressed: () {
                  final item = Items;
                  b = item;


                  log("===============${item.length}====");
                },
                child: Text(
                  "Add",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
