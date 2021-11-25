import 'package:exercicio_injecao_dependencia/controller.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late Controller controller;
  late String texto;

  @override
  void initState() {
    super.initState();
    controller = GetIt.I.get<Controller>();
  }

  @override
  Widget build(BuildContext context) {
    texto = controller.recuperar();
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              texto,
            ),
            Text(
              '',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
    );
  }
}
