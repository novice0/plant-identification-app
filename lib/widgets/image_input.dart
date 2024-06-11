import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path_provider/path_provider.dart';
import 'package:final_plant_app_2/models/plant_card_info.dart';

import 'package:flutter/services.dart';

import 'package:final_plant_app_2/data/plants.dart';

import 'package:final_plant_app_2/data/recognized_plants.dart';

class ImageInput extends StatefulWidget {
  const ImageInput({super.key, required this.onPickImage});

  final void Function(File) onPickImage;

  @override
  State<ImageInput> createState() {
    return _ImageInputState();
  }
}

class _ImageInputState extends State<ImageInput> {
  File? _selectedImage;

  //Clearing for testing purposes
  Future<void> clearApplicationDocumentsDirectory() async {
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

  Future<void> _takePicture(ImageSource source) async {
    final imagePicker = ImagePicker();
    final pickedImage = await imagePicker.pickImage(
      source: source,
      maxWidth: 600,
    );

    if (pickedImage == null) return;

    setState(
      () {
        _selectedImage = File(pickedImage.path);
      },
    );

    widget.onPickImage(_selectedImage!);
    print('image checkpoint 1');
  }

  @override
  Widget build(context) {
    Widget content = TextButton.icon(
      onPressed: () => _takePicture(ImageSource.gallery),
      icon: const Icon(
        Icons.upload,
        color: Colors.white,
      ),
      label: const Text(
        'Upload from Photos',
        style: TextStyle(
          color: Colors.white,
          fontSize: 20,
        ),
      ),
    );

    if (_selectedImage != null) {
      content = GestureDetector(
        onTap: () => _takePicture(ImageSource.gallery),
        child: Image.file(
          _selectedImage!,
          fit: BoxFit.cover,
          width: double.infinity,
          height: double.infinity,
        ),
      );
    }

    return Container(
      decoration: BoxDecoration(
        border: Border.all(
            width: 1, color: const Color.fromARGB(80, 255, 255, 255)),
        color: const Color.fromARGB(39, 255, 255, 255),
      ),
      height: 400,
      width: double.infinity,
      alignment: Alignment.center,
      child: content,
    );
  }
}
