import 'package:flutter/material.dart';

class RegisterHomePage extends StatelessWidget {
  const RegisterHomePage({Key? key, required this.title}) : super();

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Form(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                customLabel("Register", fontSize: 20),
                simpleSpace(),
                simpletInput("Full Name"),
                simpleSpace(),
                simpletInput("E-mail Address"),
                simpleSpace(),
                simpletInput("Mobile Number"),
                simpleSpace(),
                simpletInput("Country"),
                simpleSpace(),
                simpletInput("Password"),
                simpleSpace(),
                simpletInput("Confirm Password"),
                simpleSpace(),
                simpletInput("Rederal Code (Optional)"),
                simpleSpace(),
                registerButtonArea()
              ],
            ),
          ),
        ),
      ),
    );
  }

  SizedBox registerButtonArea() {
    return SizedBox(
      width: double.infinity,
      height: 50,
      child: registerElevatedButton(),
    );
  }

  SizedBox simpleSpace() => const SizedBox(height: 20);

  ElevatedButton registerElevatedButton() {
    return ElevatedButton(
      child: Text(
        'Register',
        style: const TextStyle(color: Colors.white),
      ),
      onPressed: () {},
      style: ElevatedButton.styleFrom(
          primary: Colors.red,
          padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
          textStyle: TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white)),
    );
  }

  Text customLabel(String labelS, {double fontSize: 14}) {
    return Text(
      labelS,
      textAlign: TextAlign.left,
      style: TextStyle(
          fontWeight: FontWeight.bold, color: Colors.black, fontSize: fontSize),
    );
  }

  TextFormField simpletInput(String labelParam) {
    return TextFormField(
      decoration: InputDecoration(
        labelText: '$labelParam',
        fillColor: Colors.white,
        focusedBorder: UnderlineInputBorder(
          borderSide: const BorderSide(color: Colors.red),
        ),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.grey),
        ),
      ),
    );
  }
}
