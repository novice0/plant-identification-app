import 'package:final_plant_app_2/data/plants.dart';
import 'package:final_plant_app_2/plant_card.dart';
import 'package:flutter/material.dart';

class DrawerPlantCatalog extends StatefulWidget {
  const DrawerPlantCatalog({super.key});

  @override
  State<DrawerPlantCatalog> createState() {
    return _DrawerPlantCatalogState();
  }
}

class _DrawerPlantCatalogState extends State<DrawerPlantCatalog> {
  @override
  Widget build(context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.white,
        ),
        title: const Text(
          'Our Plant Catalog',
          style: TextStyle(fontSize: 25, color: Colors.white),
        ),
        backgroundColor: const Color.fromARGB(255, 23, 67, 25),
      ),
      body: Center(
        child: Stack(
          fit: StackFit.expand,
          children: [
            Image.asset(
              'assets/images/wallpaper-3.jpg',
              fit: BoxFit.cover,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 731, // for Iphone 14 only
                  child: SingleChildScrollView(
                    physics: const BouncingScrollPhysics(),
                    child: Column(
                      children: [
                        ...plants.map(
                          (plant) {
                            return PlantCard(
                              plant.imagePath,
                              plant.imageName,
                              () {
                                Navigator.of(context)
                                    .push(MaterialPageRoute(builder: (ctx) {
                                  return plant.plantWidget;
                                }));
                              },
                            );
                          },
                        )
                      ],
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
