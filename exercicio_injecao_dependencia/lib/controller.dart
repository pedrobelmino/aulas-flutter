import 'package:exercicio_injecao_dependencia/repository.dart';

class Controller {
  const Controller({required this.repository});

  final Repository repository;

  String recuperar() {
    return repository.recuperar();
  }
}
