import 'package:final_plant_app_2/data/recognized_plants.dart';
import 'package:final_plant_app_2/providers/user_plants.dart';

import 'package:flutter/material.dart';
import 'package:final_plant_app_2/drawer_page.dart';
import 'package:final_plant_app_2/plant_card.dart';
import 'package:final_plant_app_2/screens/spider_plant.dart';
import 'package:final_plant_app_2/screens/image_input_screen.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:flutter/services.dart';

// Let this be consumer state for now
class HomePageTwo extends ConsumerStatefulWidget {
  const HomePageTwo({super.key});

  @override
  ConsumerState<HomePageTwo> createState() => _HomePageTwoState();
}

class _HomePageTwoState extends ConsumerState<HomePageTwo> {
  //late Future<void> _plantsFuture;

  /*String?
      imagePath; // this would be the path of preconcieved cover image of the correctly identified species
  String?
      imageName; // this would be the card label for the correctly identified species
  File? _selectedImage;
  To use the variables in a different way
  */
  /* 
  //This function eventually adds a Plant Card once picture is taken and plant species is identified*/

  // No need to dispose

  // this function will compare the recieved image name with plant.imageName and display on homeScreen
  /*String? recievedPlantName;
  Future<void> readFileAndCompare() async {
    String filePath = 'final_plant_app/api/venv/clickedimages/plant.txt';

    File file = File(filePath);

    String contents = await file.readAsString();
    recievedPlantName = contents;
    for (var plant in plants) {
      if (recievedPlantName == plant.imageName) {
        recognizedPlants.add(
          PlantCardInfo(plant.imagePath, plant.imageName),
        );
      }
    }
    print("reading done");
  }*/

  //Appending to recognized_plants
  //void _dispRecognizedPlants() {}

  @override
  Widget build(context) {
    final userPlants = ref.watch(userPlantsProvider);
    //_dispRecognizedPlants();
    //readFileAndCompare();
    return Scaffold(
      appBar: AppBar(
        actions: [
          TextButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (ctx) => const ImageInputScreen(),
                ),
              );
            },
            child: const Icon(
              Icons.add,
              color: Colors.white,
              size: 30,
            ),
          ),
        ],
        iconTheme: const IconThemeData(
          color: Colors.white,
        ),
        elevation: 0.0,
        title: const Text(
          'Track Your Flora',
          style: TextStyle(fontSize: 25, color: Colors.white),
        ),
        backgroundColor: const Color.fromARGB(255, 51, 112, 53),
      ),
      drawer: const DrawerPage(),
      body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/wallpaper-5.jpg'),
                fit: BoxFit.cover),
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 51, 112, 53),
                Color.fromARGB(255, 72, 155, 75),
                Color.fromARGB(255, 87, 179, 90),
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: Column(
            children: [
              (userPlants.isEmpty)
                  ? const Center(
                      child: SizedBox(
                        height: 650,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'No Plants yet to record!',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                            ),
                          ],
                        ),
                      ),
                    )
                  : ListView.builder(
                      itemCount: userPlants.length,
                      itemBuilder: (ctx, index) => ListTile(
                        title: Text(
                          userPlants[index].imageName,
                          style: Theme.of(context)
                              .textTheme
                              .titleMedium!
                              .copyWith(
                                color:
                                    Theme.of(context).colorScheme.onBackground,
                              ),
                        ),
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                                builder: (ctx) =>
                                    userPlants[index].plantWidget),
                          );
                        },
                      ),
                    ),
            ],
          )
          /*Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 650, // for Iphone 14 only
                        child: SingleChildScrollView(
                          child: Column(
                            children: [
                              ...recognizedPlants.map(
                                (plant) {
                                  return PlantCard(
                                    plant.imagePath,
                                    plant.imageName,
                                    () {
                                      Navigator.of(context).push(
                                        MaterialPageRoute(
                                          builder: (ctx) {
                                            return plant.plantWidget;
                                          },
                                        ),
                                      );
                                    },
                                  );
                                },
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
            TextButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (ctx) => const ImageInputScreen(),
                  ),
                );
              },
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.add,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Add a New Plant',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  )
                ],
              ),
            ),

            //const ImageInput(),
          ],*/

          ),
    );
  }
}
