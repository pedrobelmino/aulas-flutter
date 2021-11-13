import 'package:flutter/material.dart';

class CryptoHomePage extends StatelessWidget {
  const CryptoHomePage({Key? key, required this.title}) : super();

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
          child: Form(
            child: Column(
              children: [
                loginLabel(),
                const SizedBox(height: 10),
                textInputLogin(),
                const SizedBox(height: 10),
                passLabel(),
                const SizedBox(height: 10),
                textInputPass(),
                const SizedBox(height: 10),
                SizedBox(
                  width: double.infinity,
                  height: 100,
                  child: ElevatedButton(
                    child: const Text("Validar"),
                    onPressed: () {},
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Text loginLabel() {
    return const Text(
      'Login',
      textAlign: TextAlign.left,
      style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
    );
  }

  Text passLabel() {
    return const Text(
      'Pass',
      textAlign: TextAlign.left,
      style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
    );
  }

  TextFormField textInputLogin() {
    return TextFormField(
      decoration: const InputDecoration(
        labelText: "Enter login",
        fillColor: Colors.white,
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.grey),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.grey),
        ),
      ),
    );
  }

  TextFormField textInputPass() {
    return TextFormField(
      decoration: const InputDecoration(
        labelText: "Enter Pass",
        fillColor: Colors.white,
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.grey),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.grey),
        ),
      ),
    );
  }
}
