import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesExample extends StatefulWidget {
  const SharedPreferencesExample({Key? key}) : super(key: key);

  @override
  _SharedPreferencesExampleState createState() =>
      _SharedPreferencesExampleState();
}

class _SharedPreferencesExampleState extends State<SharedPreferencesExample> {
  int? counter;
  bool? repeat;
  double? decimal;
  String? action;
  List<String>? items;

  @override
  void initState() {
    super.initState();
    tryShare();
  }

  tryShare() async {
    // Obtain shared preferences.
    final SharedPreferences prefs = await SharedPreferences.getInstance();

    // Save an integer value to 'counter' key    await prefs.setInt('counter', 10);
    // Save a boolean value to 'repeat' key.
    await prefs.setBool('repeat', true);
    // Save a double value to 'decimal' key.
    await prefs.setDouble('decimal', 1.5);
    // Save a String value to 'action' key.
    await prefs.setString('action', 'Start');
    // Save a list of strings to 'items' key.
    await prefs.setStringList('items', ['Earth', 'Moon', 'Sun']);

    // Try reading data from the 'counter' key. If it doesn't exist, returns null.
    counter = prefs.getInt('counter');
    //Try reading data from the 'repeat' key. If it doesn't exist, returns null.
    repeat = prefs.getBool('repeat');
    // Try reading data from the 'decimal' key. If doesn't exist, returns null.
    decimal = prefs.getDouble('decimal');
    // Try reading data from the 'action' key. If it doesn't exist, returns null.
    action = prefs.getString('action');
    // Try reading data from the 'items' key. If it doesn't exist, returns null.
    items = prefs.getStringList('items');

    setState(() {}); // Update the widget to reflect the changes.
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.green,
          centerTitle: true,
          title: const Text(
            "SharedPreferencesEx.",
            style: TextStyle(
                color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),
          )),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Counter : $counter',
              style: const TextStyle(color: Colors.green, fontSize: 30),
            ),
            Text(
              'Repeat : $repeat',
              style: const TextStyle(color: Colors.green, fontSize: 30),
            ),
            Text(
              'Decimal : $decimal',
              style: const TextStyle(color: Colors.green, fontSize: 30),
            ),
            Text(
              'Action : $action',
              style: const TextStyle(color: Colors.green, fontSize: 30),
            ),
            Text(
              'Items : ${items?.join(", ")}',
              style: const TextStyle(color: Colors.green, fontSize: 30),
            ),
          ],
        ),
      ),
    );
  }
}
