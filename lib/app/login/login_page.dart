import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  LoginPage({
    Key? key,
  }) : super(key: key);

  final emailControler = TextEditingController();
  final passwordControler = TextEditingController();

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
                controller: emailControler,
                decoration: const InputDecoration(hintText: 'E-mail'),
              ),
              TextField(
                controller: passwordControler,
                obscureText: true,
                decoration: const InputDecoration(hintText: 'Hasło'),
              ),
              const SizedBox(height: 25),
              ElevatedButton(
                onPressed: () async {
                  try {
                    await FirebaseAuth.instance.signInWithEmailAndPassword(
                      email: emailControler.text,
                      password: passwordControler.text,
                    );
                  } catch (error) {
                    print(error);
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
