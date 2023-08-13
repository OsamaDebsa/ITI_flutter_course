import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:iti/firebase/store/create_user.dart';
import 'package:iti/firebase/store/user_model.dart';

class ReadUser extends StatefulWidget {
  const ReadUser({super.key});

  @override
  State<ReadUser> createState() => _ReadUserState();
}

UserModel userModel = UserModel();
Future<UserModel?> getUsers() async {
  await FirebaseFirestore.instance
      .collection("users")
      .doc("myId1")
      .get()
      .then((value) {
    userModel = UserModel.fromJson(value.data()!);

    print(userModel.name);
  });
  return userModel;
}

class _ReadUserState extends State<ReadUser> {
  UserModel? userModel;
  bool isLoading = true;
  getUser() async {
    userModel = await getUsers();
    setState(() {
      isLoading = false;
    });
  }

  @override
  void initState() {
    getUser();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text(
          "Read",
          style: TextStyle(
            color: Colors.white,
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: isLoading
          ? const CircularProgressIndicator()
          : Center(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      userModel!.name.toString(),
                      style: const TextStyle(
                        color: Colors.green,
                        fontSize: 25,
                      ),
                    ),
                    Text(
                      userModel!.age.toString(),
                      style: const TextStyle(
                        color: Colors.green,
                        fontSize: 25,
                      ),
                    ),
                    Text(
                      userModel!.birthday.toString(),
                      style: const TextStyle(
                        color: Colors.green,
                        fontSize: 25,
                      ),
                    ),
                    Text(
                      userModel!.id.toString(),
                      style: const TextStyle(
                        color: Colors.green,
                        fontSize: 25,
                      ),
                    ),
                    SizedBox(height: 20),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => CreateUser(),
                            ));
                      },
                      child: Container(
                        color: Colors.green,
                        height: 50,
                        width: double.infinity,
                        child: const Center(
                            child: Text(
                          "Go To Write Page",
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
