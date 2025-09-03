import 'package:flutter/material.dart';

class CustomTextfield extends StatelessWidget {
  const CustomTextfield({
    super.key, required this.controller,
  });
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      cursorHeight: 20,
      style: TextStyle(fontSize: 20),
      decoration: InputDecoration(
        fillColor: Colors.white,
        contentPadding: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
        filled: true,
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide.none
        ),
      ),);
  }
}
class ItemAddScreen extends StatelessWidget {
  const ItemAddScreen({super.key, required this.namecontroller, required this.semestercontroller, required this.imagecontroller, required this.detailscontroller});
  final TextEditingController namecontroller;
  final TextEditingController semestercontroller;
  final TextEditingController imagecontroller;
  final TextEditingController detailscontroller;

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 10,
      children: [
        Row(
          spacing: 5,
          children: [
            Text(
              "Name: ",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w500,
                fontSize: 25,
              ),
            ),
            Expanded(
              child: SizedBox(
                height: 52,
                child: CustomTextfield(controller: namecontroller),
              ),
            ),
          ],
        ),
        Row(
          spacing: 5,
          children: [
            Text(
              "Semester: ",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w500,
                fontSize: 25,
              ),
            ),
            Expanded(
              child: SizedBox(
                height: 52,
                child: CustomTextfield(controller: semestercontroller),
              ),
            ),
          ],
        ),
        Row(
          spacing: 5,
          children: [
            Text(
              "Image Link: ",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w500,
                fontSize: 25,
              ),
            ),
            Expanded(
              child: SizedBox(
                height: 52,
                child: CustomTextfield(controller: imagecontroller),
              ),
            ),
          ],
        ),
        Row(
          spacing: 5,
          children: [
            Text(
              "Details: ",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w500,
                fontSize: 25,
              ),
            ),
            Expanded(
              child: SizedBox(
                height: 52,
                child: CustomTextfield(controller: detailscontroller),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
