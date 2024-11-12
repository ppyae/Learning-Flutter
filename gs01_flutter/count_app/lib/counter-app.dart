import 'package:flutter/material.dart';

class CounterApp extends StatelessWidget {
  const CounterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.menu_open),
        title: const Text("Bagan"),
        centerTitle: true,
        backgroundColor: Colors.amber[300],
        actions: [
          IconButton(
            onPressed: () {
              ScaffoldMessenger.of(context)
                  .showSnackBar(const SnackBar(content: Text("Setting press")));
            },
            icon: const Icon(Icons.settings),
          )
        ],
      ),
      body: Column(
        children: [
          Image(
            image: const AssetImage("images/bagan.jpg"),
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
          "The Beauty of Bagan",
          style: TextStyle(fontSize: 25),
        ),
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              "Dislike 0",
              style: TextStyle(fontSize: 23),
            ),
            Text(
              "Like 0",
              style: TextStyle(fontSize: 23),
            ),
          ],
        ),
        SizedBox(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                width: 135,
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text("Dislike"),
                ),
              ),
              SizedBox(
                width: 135,
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text("Like"),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
