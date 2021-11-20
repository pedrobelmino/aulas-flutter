import 'package:exercicio_dio/repository/dog_repository.dart';
import 'package:flutter/material.dart';

class RandomDogPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _RandomDogPageState();
  }
}

class _RandomDogPageState extends State<StatefulWidget> {
  DogModel dogModel = DogModel(
      imageUrl:
          "https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/dog-puppy-on-garden-royalty-free-image-1586966191.jpg?crop=1.00xw:0.669xh;0,0.190xh&resize=1200:*");
  DogRepository dogRepository = DogRepository();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: Image.network(dogModel.imageUrl),
              height: 150,
            ),
            ElevatedButton(
              onPressed: () {
                dogRepository.recuperarDog().then((value) {
                  setState(() {
                    dogModel = value;
                  });
                });
              },
              child: Text("Refresh"),
            ),
          ],
        ),
      ),
    );
  }
}
