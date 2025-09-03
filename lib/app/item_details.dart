import 'package:flutter/material.dart';

class detailsitem {
  final String image;
  final String name;
  final String semester;
  final String details;

  detailsitem({
    required this.image,
    required this.name,
    required this.semester,
    required this.details,
  });
}

final List<detailsitem> Items = [
  detailsitem(
    image:
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQkAJEkJQ1WumU0hXNpXdgBt9NUKc0QDVIiaw&s",
    name: "Md Nice Islam",
    semester: "3",
    details:
        'I am a Student of Dinajpur polytechnic Institute , my father name is Mokbul hossen',
  ),
  detailsitem(
    image:
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQksR3Lt2Iy2rlmUKvJmc27GcXpe297gINhTA&s",
    name: "Md Rashed Islam",
    semester: "4",
    details:
        "I am a Student of Rangpur polytechnic Institute , my father name is Akter hossen",
  ),
  detailsitem(
    image:
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTXxls9u_fRkoQHQVhVid9MGdPPi7_V5uYzHA&s",
    name: "Shahariya khan",
    semester: "6",
    details:
        "I am a bekar, ami akta bangladeshi bekar amake keu valobashun please",
  ),
];
