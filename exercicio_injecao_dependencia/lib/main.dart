import 'package:exercicio_injecao_dependencia/controller.dart';
import 'package:exercicio_injecao_dependencia/repository.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'myhome_page.dart';

GetIt getIt = GetIt.instance;

void main() {
  registerDependencies();
  runApp(const MyApp());
}

void registerDependencies() {
  getIt.registerSingleton<Repository>(Repository());
  getIt.registerSingleton<Controller>(
      Controller(repository: getIt.get<Repository>()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}
