import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'login_page.dart';

class RegisterPageFirebase extends StatefulWidget {
  const RegisterPageFirebase({super.key});

  @override
  State<RegisterPageFirebase> createState() => _RegisterPageFirebaseState();
}

class _RegisterPageFirebaseState extends State<RegisterPageFirebase> {
  bool isSeen = true;

  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Form(
          key: formKey,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Text(
                    "Register",
                    style: TextStyle(
                      fontSize: 50,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(height: 30),
                TextFormField(
                  controller: emailController,
                  keyboardType: TextInputType.emailAddress,
                  decoration: const InputDecoration(
                      hintText: "Enter Your Email",
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.email),
                      labelText: "Email"),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Email must not be empty!";
                    } else if (value.length < 6) {
                      return "Email is not valid!";
                    } else {
                      return null;
                    }
                  },
                ),
                const SizedBox(height: 20),
                TextFormField(
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "password must not be empty!";
                    } else if (value.length < 6) {
                      return "password is too short!";
                    } else {
                      return null;
                    }
                  },
                  controller: passwordController,
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: isSeen,
                  decoration: InputDecoration(
                      hintText: "Enter Your Password",
                      border: const OutlineInputBorder(),
                      prefixIcon: const Icon(Icons.lock),
                      suffixIcon: IconButton(
                          onPressed: () {
                            isSeen = !isSeen;
                            setState(() {});
                          },
                          icon: Icon(isSeen == true
                              ? Icons.remove_red_eye
                              : Icons.visibility_off)),
                      labelText: "Password"),
                ),
                const SizedBox(height: 30),
                GestureDetector(
                  onTap: () {
                    print(emailController.text);
                    print(passwordController.text);
                  },
                  child: GestureDetector(
                    onTap: () {
                      if (formKey.currentState!.validate()) {
                        print(emailController.text);
                        print(passwordController.text);
                        FirebaseAuth.instance.createUserWithEmailAndPassword(
                            email: emailController.text,
                            password: passwordController.text);
                      }
                    },
                    child: Container(
                      height: 45,
                      width: double.infinity,
                      color: Colors.blue,
                      child: const Center(
                          child: Text(
                        "Register",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      )),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("I have an account"),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const LoginPageFirebase(),
                            ));
                      },
                      child: const Text("Login"),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
