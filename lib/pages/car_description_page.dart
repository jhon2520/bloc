import 'package:flutter/material.dart';


class CardDescriptionPage extends StatelessWidget {
  const CardDescriptionPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("El valor de su carro es:"),
            Text("La marca de su carro es:"),
            Text("su nombre es:"),
          ],
        ),
      ),
    );
  }
}