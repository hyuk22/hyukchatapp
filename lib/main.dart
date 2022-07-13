import 'package:flutter/material.dart';
import 'package:hyukchatapp/screens/main_screens.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Chatting app',
      theme: ThemeData(
        primarySwatch: Colors.blue
      ),
      home: LoginSignupScreen(),
    );
  }
}
