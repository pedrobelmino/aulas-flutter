import 'package:dio/dio.dart';

class DogRepository {
  Future<DogModel> recuperarDog() async {
    final provider = Dio();

    final response =
        await provider.get('https://dog.ceo/api/breeds/image/random');

    print(response.statusCode);
    // ignore: avoid_print
    print(response.data["message"]);

    final dog = DogModel.fromJson(response.data);
    return dog;
  }
}

class DogModel {
  final String imageUrl;

  DogModel({required this.imageUrl});

  factory DogModel.fromJson(Map<String, dynamic> json) =>
      DogModel(imageUrl: json['message']);
}
