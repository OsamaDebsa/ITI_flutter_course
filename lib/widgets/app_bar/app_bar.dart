import 'package:flutter/material.dart';

class AppBarDoc extends StatelessWidget {
  const AppBarDoc({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.green,
          leading: const Icon(Icons.arrow_forward),
          title: const Text("First Project"),
          centerTitle: true,
          actions: const [
            Icon(Icons.arrow_back),
            Padding(padding: EdgeInsets.symmetric(horizontal: 5)),
            Icon(Icons.facebook),
            Padding(padding: EdgeInsets.symmetric(horizontal: 5)),
          ]),
      body: Container(
        color: const Color.fromARGB(255, 30, 53, 31),
        width: double.infinity,
        child: const Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("First",
                  style: TextStyle(
                    color: Colors.white,
                    backgroundColor: Colors.red,
                    fontSize: 36,
                  )),
              Text("First",
                  style: TextStyle(
                    color: Colors.white,
                    backgroundColor: Colors.red,
                    fontSize: 36,
                  )),
              Expanded(
                flex: 3,
                child: Text("First",
                    style: TextStyle(
                      color: Colors.white,
                      backgroundColor: Colors.red,
                      fontSize: 36,
                    )),
              ),
              Text("First",
                  style: TextStyle(
                    color: Colors.white,
                    backgroundColor: Colors.red,
                    fontSize: 36,
                  )),
              Text("First",
                  style: TextStyle(
                    color: Colors.white,
                    backgroundColor: Colors.red,
                    fontSize: 36,
                  )),
            ]),
      ),
    );
  }
}
