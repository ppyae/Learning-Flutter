import 'package:flutter/material.dart';
import 'package:profile/model/profile_model.dart';
import 'package:profile/views/profile_view.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(scaffoldBackgroundColor: Colors.grey),
    home: const ProfileData(
      profileModel: ProfileModel(
          profileImage: "image/download.jpg",
          name: "Roronowa Zoro",
          phone: "0947607040",
          email: "zoro@gmail.com",
          address: "Osaka ku, Japan"),
      child: ProfileView(),
    ),
  ));
}
