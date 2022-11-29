import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../local_data/user_sharedpreference.dart';
import 'user_information.dart';

class UserRegirtration extends StatefulWidget {
  const UserRegirtration({Key? key}) : super(key: key);

  @override
  State<UserRegirtration> createState() => _UserRegirtrationState();
}

class _UserRegirtrationState extends State<UserRegirtration> {
  TextEditingController phoneController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  void initState() {
    phoneController.text = UserSharedPreference().getPhoneNumber() ?? "";
    emailController.text = UserSharedPreference().getEmail() ?? "";
    passwordController.text = UserSharedPreference().getPassword() ?? "";
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text('User Registration'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.network(
                "https://media.istockphoto.com/id/1281150061/vector/register-account-submit-access-login-password-username-internet-online-website-concept.jpg?s=612x612&w=0&k=20&c=9HWSuA9IaU4o-CK6fALBS5eaO1ubnsM08EOYwgbwGBo=",
                height: 200,
                width: double.infinity,
              ),
              Text(
                'Create a new account',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              SizedBox(
                height: 10,
              ),
              TextField(
                controller: phoneController,
                decoration: InputDecoration(
                    label: Text('Phone'),
                    hintText: 'Enter Your Number',
                    prefix: Icon(Icons.person),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25))),
              ),
              SizedBox(
                height: 10,
              ),
              TextField(
                controller: emailController,
                decoration: InputDecoration(
                    label: Text('Email'),
                    hintText: 'Enter Your Email',
                    prefix: Icon(Icons.email),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25))),
              ),
              SizedBox(
                height: 10,
              ),
              TextField(
                controller: passwordController,
                decoration: InputDecoration(
                    label: Text('Password'),
                    hintText: 'Enter Your Password',
                    prefix: Icon(Icons.security),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25))),
              ),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                  onPressed: () {
                    UserSharedPreference().setPhoneNumber(phoneController.text);
                    UserSharedPreference().setEmail(emailController.text);
                    UserSharedPreference().setPassword(passwordController.text);

                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => UserInformatinal()));
                  },
                  child: Text('Sign Up'))
            ],
          ),
        ),
      ),
    );
  }
}
