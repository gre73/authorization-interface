import 'dart:io';

import 'package:authorization_interface/widgets/sign_in_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(const SignInScreen());

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: SignInScreen(),
    );
  }
}

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Sign Up")),
      body: const Signup(),
    );
  }
}

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset('web/icons/Icon-maskable-512.png', width: 300.0, height: 300.0),
            Padding(
              padding: EdgeInsets.all(4.0),
              child: TextFormField(
                decoration: const InputDecoration(
                    hintText: 'Enter your name',
                    labelText: 'Name',
                    border: OutlineInputBorder()
                ),
                validator: (String? value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your name';
                  }
                  return null;
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.all(4.0),
              child: TextFormField(
                decoration: const InputDecoration(
                    hintText: 'Enter your email',
                    labelText: 'Email',
                    border: OutlineInputBorder()
                ),
                validator: (String? value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your email';
                  }
                  return null;
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.all(4.0),
              child: TextFormField(
                decoration: const InputDecoration(
                    hintText: 'Enter your password',
                    labelText: 'Password',
                    border: OutlineInputBorder()
                ),
                validator: (String? value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your password';
                  }
                  return null;
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: SizedBox(
                width: double.infinity,
                child: FilledButton(
                  onPressed: () => {
                    if (_formKey.currentState!.validate()) {
                    },
                    showDialog(
                      context: context,
                      builder: (BuildContext ctx) {
                        return const AlertDialog(
                          title: Text('Message'),
                          content: Text("Need to implement"),
                        );
                      },
                    )
                  },
                  child: const Text('Signup'),
                  style: FilledButton.styleFrom(
                      backgroundColor: Colors.blueAccent
                  ),
                ),
              ),
            ),
            SignupAndBack(enabled: true)
          ],
        ),
      ),
    );
  }
}

class SignupAndBack extends StatelessWidget {
  const SignupAndBack({super.key, required this.enabled});

  final bool enabled;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: TextButton(
                  onPressed: () => {
                    Navigator.pop(context)
                  },
                  child: const Text("Back"),
                  style: TextButton.styleFrom(
                      foregroundColor: Colors.grey
                  ),
                ),
              ),
            ]
        )
    );
  }
}