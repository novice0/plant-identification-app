import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  WelcomePage(this.startApp, {super.key});

  final void Function() startApp;

  final ButtonStyle raisedButtonStyle = OutlinedButton.styleFrom(
    backgroundColor: Colors.white,
    minimumSize: const Size(100, 36),
    padding: const EdgeInsets.symmetric(horizontal: 45, vertical: 10),
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(20)),
    ),
  );

  @override
  Widget build(context) {
    return Center(
      child: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            'assets/images/wallpaper-2.jpg',
            fit: BoxFit.cover,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 450,
                width: 300,
                child: Image.asset(
                  'assets/images/logo-3.png',
                  fit: BoxFit.cover,
                ),
              ),
              const Text(
                "Let's get started",
                style: TextStyle(color: Colors.white, fontSize: 25),
              ),
              const SizedBox(
                height: 15,
              ),
              OutlinedButton(
                style: raisedButtonStyle,
                onPressed: startApp,
                child: const Icon(
                  Icons.arrow_right_alt_sharp,
                  size: 25,
                  color: Colors.green,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
