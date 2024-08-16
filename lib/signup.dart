import 'package:flutter/material.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});
  @override
  State<StatefulWidget> createState() => SignupState();
}

class SignupState extends State<Signup> {
  final _formkey = GlobalKey<FormState>();
  final TextEditingController emailc = TextEditingController();
  final passc = TextEditingController();
  final confirmPassc = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text("Sign Up"),
        ),
        backgroundColor: Color.fromRGBO(28, 158, 234, 0.927),
      ),
      body: Form(
        key: _formkey,
        child: Column(
          children: [
            TextFormField(
              controller: emailc,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                label: Text("Email"),
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "Email can not be empty";
                } else if (!RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                    .hasMatch(value)) {
                  return "Enter a valid Email";
                }
              },
            ),
            TextFormField(
              obscureText: true,
              controller: passc,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                label: Text("Password"),
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "This is not a valid Password";
                } else if (value.length > 8) {
                  return "Password can't be more then 8 Characters long";
                }
              },
            ),
            TextFormField(
              obscureText: true,
              controller: confirmPassc,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                label: Text("Confirm Password"),
              ),
              validator: (value) {
                if (value != passc.text) {
                  return "Passwords didn't match";
                }
              },
            ),
            ElevatedButton(
                onPressed: () {
                  if (_formkey.currentState!.validate()) {
                    print("Submitted");
                  }
                },
                child: const Text("Sign Up")),
          ],
        ),
      ),
    );
  }
}
