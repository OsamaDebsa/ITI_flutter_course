import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:iti/firebase/store/read_user.dart';
import 'package:iti/firebase/store/user_model.dart';

class CreateUser extends StatefulWidget {
  const CreateUser({super.key});

  @override
  State<CreateUser> createState() => _CreateUserState();
}

class _CreateUserState extends State<CreateUser> {
  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text(
          "Create",
          style: TextStyle(
            color: Colors.white,
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(children: [
          TextFormField(
            controller: controller,
            decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25))),
          ),
          const SizedBox(height: 15),
          IconButton(
            onPressed: () async {
              final String name = controller.text;

              final docUser =
                  FirebaseFirestore.instance.collection("users").doc("myId1");

              final user = UserModel(
                name: name,
                age: "25",
                birthday: DateTime(2002, 1, 1),
                id: docUser.id,
              );
              final json = user.toJson();
              await docUser.set(json);
            },
            icon: const CircleAvatar(
              backgroundColor: Colors.green,
              child: Icon(
                Icons.add,
                color: Colors.white,
              ),
            ),
          ),
          const SizedBox(height: 15),
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ReadUser(),
                  ));
            },
            child: Container(
              color: Colors.green,
              height: 50,
              width: double.infinity,
              child: const Center(
                  child: Text(
                "Go To Read Page",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              )),
            ),
          )
        ]),
      ),
    );
  }
}
