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
  var isCreatingAccount = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(isCreatingAccount == true
                  ? 'Zarejestruj się'
                  : 'Zaloguj się'),
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
                  if (isCreatingAccount = true) {
                    // rejestracja
                    try {
                      await FirebaseAuth.instance
                          .createUserWithEmailAndPassword(
                        email: widget.emailControler.text,
                        password: widget.passwordControler.text,
                      );
                    } catch (error) {
                      setState(() {
                        errorMessage = error.toString();
                      });
                    }
                  } else {
                    // logowanie
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
                  }
                },
                child: Text(isCreatingAccount == true
                    ? 'Zarejestruj się'
                    : 'Zaloguj się'),
              ),
              const SizedBox(height: 25),
              if (isCreatingAccount == false) ...[
                TextButton(
                  onPressed: () {
                    setState(() {
                      isCreatingAccount = true;
                    });
                  },
                  child: const Text('Utwórz konto'),
                ),
              ],
              if (isCreatingAccount == true) ...[
                TextButton(
                  onPressed: () {
                    setState(() {
                      isCreatingAccount = false;
                    });
                  },
                  child: const Text('Masz już konto?'),
                ),
              ],
            ],
          ),
        ),
      ),
    );
  }
}
