import 'package:flutter/material.dart';

import '../local_data/user_sharedpreference.dart';

class UserInformatinal extends StatefulWidget {
  const UserInformatinal({Key? key}) : super(key: key);

  @override
  State<UserInformatinal> createState() => _UserInformatinalState();
}

class _UserInformatinalState extends State<UserInformatinal> {
  String? phone;
  String? email;
  String? password;

  @override
  void initState() {
    phone = UserSharedPreference().getPhoneNumber();
    email = UserSharedPreference().getEmail();
    password = UserSharedPreference().getPassword();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("User Information"),
      ),
      body: Card(
        elevation: 12,
        child: Container(
          height: 100,
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                phone.toString(),
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Text(
                email.toString(),
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),

              Text(
                password.toString(),
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
