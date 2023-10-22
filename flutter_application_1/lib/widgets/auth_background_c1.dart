import 'package:flutter/material.dart';

class AuthBackgorundC1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size_screen =
        MediaQuery.of(context).size; //obtiene el tamaño de la pantalla
    return Container(
      width: double.infinity,
      height: size_screen.height * 0.4, //40% de la pantalla
      decoration: orangeDecoration(),
      child: Stack(
        children: [
          Positioned(
            child: Buble(),
            top: 90,
            left: 30,
          ),
          Positioned(
            child: Buble(),
            top: -40,
            left: -30,
          ),
          Positioned(
            child: Buble(),
            top: -50,
            right: -20,
          ),
          Positioned(
            child: Buble(),
            bottom: -50,
            left: -20,
          ),
          Positioned(
            child: Buble(),
            bottom: 120,
            right: 20,
          ),
          Positioned(
            child: Buble(),
            bottom: 20,
            right: 80,
          ),
        ],
      ),
    );
  }

  BoxDecoration orangeDecoration() => const BoxDecoration(
          gradient: LinearGradient(colors: [
        Color.fromARGB(255, 162, 156, 205),
        Color.fromRGBO(112, 118, 208, 1),
      ]));
}

class Buble extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: Color.fromRGBO(197, 19, 19, 0.799)),
    );
  }
}
