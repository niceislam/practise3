import 'package:flutter/material.dart';
import 'package:listview_picker/app/details_screeen.dart';
import 'package:listview_picker/app/item_details.dart';

import 'item_add.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        centerTitle: true,
        title: Text(
          "listview picker",
          style: TextStyle(
            color: Colors.white,
            fontSize: 25,
            fontWeight: FontWeight.w500,
            letterSpacing: 2,
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: Items.length,
        itemBuilder: (context, index) {
          final item = Items[index];
          return InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (c) => DetailsScreeen(item: item.details),
                ),
              );
            },
            child: Card(
              child: ListTile(
                leading: CircleAvatar(
                  radius: 25,
                  backgroundImage: NetworkImage("${item.image}"),
                ),
                title: Text(
                  "${item.name}",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle:
                    int.parse(item.semester) == 2
                        ? Text(
                          "${item.semester}nd semester",
                          style: TextStyle(fontSize: 18),
                        ): int.parse(item.semester) == 1
                        ? Text(
                          "${item.semester}st semester",
                          style: TextStyle(fontSize: 18),
                        )
                        : int.parse(item.semester) == 3
                        ? Text(
                          "${item.semester}rd semester",
                          style: TextStyle(fontSize: 18),
                        )
                        : Text(
                          "${item.semester}th semester",
                          style: TextStyle(fontSize: 18),
                        ),
              ),
            ),
          );
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (c) => ItemAdd()));
        },
        child: Icon(Icons.add, size: 32),
      ),
    );
  }
}
