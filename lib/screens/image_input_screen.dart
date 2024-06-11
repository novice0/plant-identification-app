import 'package:final_plant_app_2/providers/user_plants.dart';
import 'package:flutter/material.dart';
import 'package:final_plant_app_2/widgets/image_input.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'dart:io';

import 'package:http/http.dart' as http;

import 'package:final_plant_app_2/data/plants.dart';

//import 'package:flutter_screenutil/flutter_screenutil.dart';

class ImageInputScreen extends ConsumerStatefulWidget {
  const ImageInputScreen({super.key});
  @override
  ConsumerState<ImageInputScreen> createState() {
    return _ImageInputScreenState();
  }
}

class _ImageInputScreenState extends ConsumerState<ImageInputScreen> {
  File? _selectedImage;

  //Loading from assets
  Future<String> loadPythonFileContent(String filePath) async {
    return await rootBundle.loadString(filePath);
  }

  /*void runPythonScript() async {
    try {
      await platform.invokeMethod('runPythonScript');
    } on PlatformException catch (e) {
      print('Failed to run Python Script: ${e.message}');
    }
  }*/
  /*Future<void> executeSpecFile(String filePath) async {
    try {
      await platform.invokeMethod('executeSpecFile', {'filePath': filePath});
    } on PlatformException catch (e) {
      print("Failed to execute spec file: '${e.message}'.");
    }
  }*/

  /*void _addUserPlantCard() {
    if (_selectedImage == null) {
      return;
    }
    ref.read(userPlantsProvider.notifier).addUserPlant(_selectedImage!);

    Navigator.of(context).pop();
  }*/
  //REVIEW THIS ONCE
  /*http.MultipartRequest? request;
  Future<void> _uploadPlantImage() async {
    /*if (_selectedImage != null) {
      final Directory directory = await getApplicationDocumentsDirectory();
      final String imagePath = '${directory.path}/clicked_images';

      await Directory(imagePath).create(recursive: true);

      final String timestamp = DateTime.now().millisecondsSinceEpoch.toString();
      final String newImagePath = '$imagePath/image_$timestamp.jpg';

      await _selectedImage!.copy(newImagePath);

      print("Image saved at: $newImagePath");
    }*/
    request = http.MultipartRequest(
      "POST",
      Uri.parse(
        'https://22ghtqqd-4000.inc1.devtunnels.ms/upload', //CHANGE THIS LINK EVERYTIME
      ),
    );
    final headers = {"Content-type": "multipart/form-data"};
    request!.files.add(
      http.MultipartFile('image', _selectedImage!.readAsBytes().asStream(),
          _selectedImage!.lengthSync(),
          filename: _selectedImage!.path.split("/").last),
    );
    request!.headers.addAll(headers);
    final response = await request!.send();
    http.Response res = await http.Response.fromStream(response);
    final resJson = jsonDecode(res.body);
    final message = resJson['message'];
    //runPythonScript();
    /*executeSpecFile(
      '/Users/admin/Documents/Programming/My Projects/final_plant_app/api/venv/clickedimages/big_daddy.spec',
    );*/
    //setState(() {});
  }
  */

  final String uploadUrl = 'https://1lfgvhxz-5000.inc1.devtunnels.ms/upload';
  Future<void> _uploadFile() async {
    var request = http.MultipartRequest('POST', Uri.parse(uploadUrl));
    request.files.add(
      http.MultipartFile('image', _selectedImage!.readAsBytes().asStream(),
          _selectedImage!.lengthSync(),
          filename: _selectedImage!.path.split('/').last),
    );
    var response = await request.send();

    if (response.statusCode == 200) {
      print('File uploaded successfully');
    } else {
      print('File upload failed with status ${response.statusCode}');
    }
  }

  String recievedPlantName = '';
  int counter = 0;
  void readFileAndCompare() async {
    //String filePath = 'final_plant_app/api/venv/clickedimages/plant.txt';

    String contents = await rootBundle.loadString('assets/others/plant.txt');

    recievedPlantName = contents;
    for (var plant in plants) {
      if (recievedPlantName == plant.imageName) {
        ref.read(userPlantsProvider.notifier).addPlant(
              plant.imagePath,
              plant.imageName,
              plant.plantWidget,
            );
      }
    }
    print("read from text the correct plant!");

    print(recievedPlantName);
    recievedPlantName = '';
    print(recievedPlantName);
    print('and just read from text');
    Navigator.of(context).pop();
  }

  //Clearing for testing purposes
  /*  Future<void> clearApplicationDocumentsDirectory() async {
    try {
      // Get the ApplicationDocumentsDirectory
      Directory appDir = await getApplicationDocumentsDirectory();

      // List all files and directories in the ApplicationDocumentsDirectory
      List<FileSystemEntity> entities = appDir.listSync(recursive: true);

      // Delete each file and directory
      for (FileSystemEntity entity in entities) {
        await entity.delete(recursive: true);
      }

      print('ApplicationDocumentsDirectory cleared');
    } catch (e) {
      print('Error clearing ApplicationDocumentsDirectory: $e');
    }
  }

  //Steps:
  // ---That Place is ApplicationDocuments Directory---
  // Take picture - function -- image_input.dart - done
  // upload it to a place - function -- image_input_screen.dart - done
  // upload python script to the same place - done
  // upload trained model to the same place - done
  // run the big_daddy script - function -- done
  // run the function to read from text file --
  // delete the text file --

  Future<void> _SaveImage() async {
    try {
      Directory appDir = await getApplicationDocumentsDirectory();
      String imagePath = '${appDir.path}/clicked_image.jpg';

      await _selectedImage!.copy(imagePath);
      print('Clicked image saved to: $imagePath');
    } catch (e) {
      print('Error saving clicked image: $e');
    }
    //clearApplicationDocumentsDirectory();
  }

  String? pythonFilePath;
  Future<void> _SavePythonScript() async {
    try {
      // Get the ApplicationDocumentsDirectory
      Directory appDir = await getApplicationDocumentsDirectory();

      // Construct the file path for the Python script
      String filePath = '${appDir.path}/script.py';

      // Write the Python script content to the file
      File file = File(filePath);
      String scriptContent = '''
import cv2
import tensorflow as tf
import os
from tensorflow.keras.models import load_model
import numpy as np
import matplotlib.pyplot as plt

from keras.models import Sequential
from keras.layers import Dense, Dropout, LSTM, BatchNormalization
from keras.callbacks import TensorBoard
from keras.callbacks import ModelCheckpoint
from keras.optimizers import Adam


# new_model = load_model("RPPOOP_03.h5")

# for file in os.listdir():
# file = "aloe-vera-1.jpeg"

answer = -1

for file in os.listdir():
    if "clicked_image.jpg" in file:

        # if "image_picker" in file:
        img = cv2.imread(file)
        resize = tf.image.resize(img, (256, 256))

        plt.imshow(resize.numpy().astype(int))

        new_model = tf.keras.models.load_model("RPPOOP_03.h5")

        yhat = new_model.predict(np.expand_dims(resize / 255, 0))
        answer = np.argmax(yhat[0])

        os.remove(file)


def case0():
    return "African Violet"


def case1():
    return "Aloe Vera"


def case2():
    return "Boston Fern"


def case3():
    return "Devil's Ivy"


def case4():
    return "Weeping Fig"


def case5():
    return "Peace Lily"


def case6():
    return "Rubber Plant"


def case7():
    return "Snake Plant"


def case8():
    return "Spider Plant"


def case9():
    return "ZZ Plant"


def default_case():
    return "Error, Invalid Image Recognition!"


# Dictionary mapping case values to functions
switch = {
    0: case0,
    1: case1,
    2: case3,
    3: case3,
    4: case4,
    5: case5,
    6: case6,
    7: case7,
    8: case8,
    9: case9,
}


# Function to simulate switch-case
def switch_case(case):
    return switch.get(case, default_case)()


file_output = switch_case(answer)

# Open a file for writing (create if not exists, overwrite if exists)
with open("plant.txt", "w") as f:
    # Write content to the file
    f.write(file_output)

      ''';
      await file.writeAsString(scriptContent);

      print('Python script saved to: $filePath');
      pythonFilePath = filePath;
    } catch (e) {
      print('Error saving Python script: $e');
    }
  }

  String? trainedModelFilePath;
  Future<void> _saveTrainedModel() async {
    try {
      // Get the ApplicationDocumentsDirectory
      Directory appDir = await getApplicationDocumentsDirectory();

      // Construct the file paths
      String modelAssetPath =
          'assets/RPPOOP_03.h5'; // Adjust this path as per your asset location
      String modelFilePath = '${appDir.path}/model.h5';

      // Read the model file from assets
      ByteData data = await rootBundle.load(modelAssetPath);
      List<int> bytes = data.buffer.asUint8List();

      // Write the model file to the ApplicationDocumentsDirectory
      File modelFile = File(modelFilePath);
      await modelFile.writeAsBytes(bytes);
      trainedModelFilePath = modelFilePath;
    } catch (e) {
      print('Error copying model file: $e');
    }
  }

  Future<void> runPythonScript(String scriptPath) async {
    try {
      // Run the Python script using the Python interpreter
      ProcessResult result = await Process.run('python', [scriptPath]);
      if (result.exitCode == 0) {
        print('Python script executed successfully');
        print('Output: ${result.stdout}');
      } else {
        print('Failed to execute Python script');
        print('Error: ${result.stderr}');
      }
    } catch (e) {
      print('Error running Python script: $e');
    }
  }

  void masterFunction() {
    _SaveImage();
    _SavePythonScript();
    _saveTrainedModel();
    runPythonScript(pythonFilePath!);
    clearApplicationDocumentsDirectory();
    Navigator.of(context).pop();
  }
*/

  /*void secondMaster() {
    _uploadFile();
    Future.delayed(
      const Duration(
        seconds: 3,
      ),
    );
    readFileAndCompare();
  }*/

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.white,
        ),
        title: const Text(
          'Add your Plant',
          style: TextStyle(
            fontSize: 25,
            color: Colors.white,
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 51, 112, 53),
      ),
      body: Container(
        decoration: const BoxDecoration(
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
            const SizedBox(
              height: 30,
            ),
            ImageInput(
              onPickImage: (image) {
                _selectedImage = image;
              },
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                TextButton.icon(
                  onPressed: readFileAndCompare,
                  label: const Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        Icons.search_rounded,
                        color: Colors.white,
                      ),
                      Text(
                        'Check Species',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  width: 30,
                ),
                TextButton.icon(
                  onPressed: _uploadFile,
                  label: const Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        Icons.arrow_forward_ios_rounded,
                        color: Colors.white,
                      ),
                      Text(
                        'Submit',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

// Riverpod feature exists in user_plants.dart
// To edit this later
// To decide on a model

// This file should send the clicked image to the backend
// This is still the add_place.dart file
// Added the riverpod feature again
