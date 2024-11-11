import 'package:flutter/material.dart';

class HelloWorld extends StatelessWidget {
  const HelloWorld({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu_open),
        title: Text("Hello World"),
        backgroundColor: const Color.fromARGB(255, 219, 70, 59),
        actions: [
          IconButton(
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text("Pressing setting")));
            },
            icon: Icon(Icons.settings),
          ),
        ],
      ),
      body: BodyPart(),
    );
  }
}

class BodyPart extends StatelessWidget {
  const BodyPart({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "min na no ni hon go 5",
            style: TextStyle(fontSize: 20),
          ),
          Text(
            "min na no ni hon go 3",
            style: TextStyle(fontSize: 20),
          ),
          Text(
            "min na no ni hon go 4",
            style: TextStyle(fontSize: 20),
          )
        ],
      ),
    );
  }
}
