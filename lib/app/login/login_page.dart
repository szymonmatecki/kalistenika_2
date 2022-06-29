import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  LoginPage({
    Key? key,
  }) : super(key: key);

  final emailControler = TextEditingController();
  final passwordControler = TextEditingController();

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  var errorMessage = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Zaloguj się'),
              const SizedBox(height: 25),
              TextField(
                controller: widget.emailControler,
                decoration: const InputDecoration(hintText: 'E-mail'),
              ),
              TextField(
                controller: widget.passwordControler,
                obscureText: true,
                decoration: const InputDecoration(hintText: 'Hasło'),
              ),
              const SizedBox(height: 25),
              Text(errorMessage),
              const SizedBox(height: 25),
              ElevatedButton(
                onPressed: () async {
                  try {
                    await FirebaseAuth.instance.signInWithEmailAndPassword(
                      email: widget.emailControler.text,
                      password: widget.passwordControler.text,
                    );
                  } catch (error) {
                    setState(() {
                      errorMessage = error.toString();
                    });
                  }
                },
                child: const Text('Zaloguj się'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
