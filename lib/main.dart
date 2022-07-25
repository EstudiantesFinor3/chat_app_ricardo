import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'login.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  //conecion a la base de datos
  await Firebase.initializeApp();
  //await Firebase.initializeApp(
  //    options: FirebaseOptions(
  //  apiKey: "AIzaSyDHyv-dT2g1Xtg2miZ2hcAQRqVuD5VfUSU",
  //  appId: "1:625032700708:web:d5f5218c8889012c0189b1",
  //  messagingSenderId: "625032700708",
  //  projectId: "chatapp2-ad4bc",
  //));
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'chat',
      theme: ThemeData(
        primaryColor: Colors.orange[900],
      ),
      home: Home(),
      debugShowCheckedModeBanner: false,
    );
  }
}
