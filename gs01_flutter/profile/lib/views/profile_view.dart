import 'package:flutter/material.dart';

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
