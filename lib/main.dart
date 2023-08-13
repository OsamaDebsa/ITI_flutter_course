import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'firebase/store/create_user.dart';

Future<void> main() async {
  // to initalize Firebase you must add this tow lines :
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const CreateUser(),
    );
  }
}
