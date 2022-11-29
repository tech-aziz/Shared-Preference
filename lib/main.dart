import 'package:flutter/material.dart';
import 'local_data/user_sharedpreference.dart';
import 'screens/user_registration.dart';

Future main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await UserSharedPreference().initSharedPreference();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'shared preferences',
      home: UserRegirtration()
    );
  }
}

