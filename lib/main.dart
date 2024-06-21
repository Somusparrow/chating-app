import 'package:chatingapp/screens/login.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: FirebaseOptions(
        apiKey: "AIzaSyD-arcrK6QkHd0sdUs1u426e3RJAboeI8Q",
        appId:"1:891731289921:web:c3d0a56cd9425bc5ed63c0",
        messagingSenderId: "891731289921",
        projectId: "instagram-5ad60",
      storageBucket: "instagram-5ad60.appspot.com",
    )
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: login()
    );
  }
}

