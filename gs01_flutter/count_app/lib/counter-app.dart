import 'package:flutter/material.dart';

class CounterApp extends StatelessWidget {
  const CounterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu_open),
        title: Text("Bagan"),
        centerTitle: true,
        backgroundColor: Colors.amber[300],
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.settings),
          )
        ],
      ),
      body: Column(
        children: [
          Image(
            image: AssetImage("images/bagan.jpg"),
            width: double.infinity,
            height: MediaQuery.of(context).size.height / 3 * 1,
            fit: BoxFit.cover,
          ),
          const Expanded(child: CounterBody()),
        ],
      ),
    );
  }
}

class CounterBody extends StatelessWidget {
  const CounterBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        const Text(
          "Stateful Widget",
          style: TextStyle(fontSize: 25),
        ),
        const Text(
          "Count is 0",
          style: TextStyle(fontSize: 23),
        ),
        SizedBox(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ElevatedButton(onPressed: () {}, child: Text("Count Down")),
              ElevatedButton(onPressed: () {}, child: Text("Count Up")),
            ],
          ),
        )
      ],
    );
  }
}
