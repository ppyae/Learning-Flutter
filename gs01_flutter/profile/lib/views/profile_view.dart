import 'package:flutter/material.dart';
import 'package:profile/model/profile_model.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu_open),
        title: Text("Profile"),
        centerTitle: true,
        backgroundColor: Colors.amber[400],
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.settings)),
        ],
      ),
      body: const Stack(children: [
        ProfileBackground(),
        ProfileImage(
          image: 'image/thel.jpg',
        ),
        ProfileBody(
          profileModel: ProfileModel(
              profileImage: "image/",
              name: "Thandar Htay",
              phone: "09251299992",
              email: "thandar2512@gmail.com",
              address: "No 354, Bommar Kyaung street, NorthOkkalapa"),
        )
      ]),
    );
  }
}

class ProfileBackground extends StatelessWidget {
  const ProfileBackground({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        DecoratedBox(
          decoration: const BoxDecoration(
            color: Colors.deepPurple,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(50), topRight: Radius.circular(50)),
          ),
          child: SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 6 * 4,
          ),
        )
      ],
    );
  }
}

class ProfileImage extends StatelessWidget {
  const ProfileImage({super.key, required this.image});

  final String image;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height / 7 * 3,
      // width: MediaQuery.of(context).size.width,
      child: Container(
        alignment: Alignment.centerRight,
        padding: const EdgeInsets.only(right: 40),
        child: CircleAvatar(
          radius: 70,
          backgroundImage: AssetImage(image),
        ),
      ),
    );
  }
}

class ProfileBody extends StatelessWidget {
  const ProfileBody({super.key, required this.profileModel});

  final ProfileModel profileModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          top: MediaQuery.of(context).size.height / 6 * 2, left: 16, right: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ProfileBodyInfo(label: "Name", value: profileModel.name),
          ProfileBodyInfo(label: "Phone", value: profileModel.phone),
          ProfileBodyInfo(label: "Email", value: profileModel.email),
          ProfileBodyInfo(label: "Address", value: profileModel.address),
        ],
      ),
    );
  }
}

class ProfileBodyInfo extends StatelessWidget {
  const ProfileBodyInfo({super.key, required this.label, required this.value});

  final String label;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(6),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: const TextStyle(color: Colors.white, fontSize: 14),
          ),
          Text(
            value,
            style: const TextStyle(color: Colors.white, fontSize: 20),
          ),
        ],
      ),
    );
  }
}
