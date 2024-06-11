import 'package:flutter/material.dart';

class PlantCard extends StatelessWidget {
  const PlantCard(this.imagePath, this.imageName, this.onTap, {super.key});

  final String imagePath;

  final String imageName;

  final void Function() onTap;

  @override
  Widget build(context) {
    return Column(
      children: [
        const SizedBox(
          height: 20,
        ),
        ElevatedButton(
          onPressed: onTap,
          style: ElevatedButton.styleFrom(
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(20),
              ),
            ),
            backgroundColor: Colors.white,
            elevation: 10,
          ),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              CircleAvatar(
                backgroundColor: Colors.white,
                radius: 50,
                child: Image.asset(
                  imagePath,
                  width: double.infinity,
                  height: 200,
                ),
              )
              /*
              Image.asset(
                imagePath,
                width: 200,
                height: 200,
              ),*/
              ,
              SizedBox(
                width: 200,
                child: Center(
                  child: Text(
                    textAlign: TextAlign.center,
                    imageName,
                    style: const TextStyle(fontSize: 20, color: Colors.black),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
