import 'package:flutter/material.dart';
import 'package:profile/model/profile_model.dart';
import 'package:profile/views/profile_view.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(scaffoldBackgroundColor: Colors.grey),
    home: const ProfileData(
      profileModel: ProfileModel(
          profileImage: "image/thel.jpg",
          name: "Thandar Htay",
          phone: "09251299992",
          email: "thandar2512@gmail.com",
          address: "No 364, Bommar Kyaung Street, NorthOkkalapa"),
      child: ProfileView(),
    ),
  ));
}
