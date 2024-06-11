import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';
import 'dart:io';

const uuid = Uuid();

class PlantCardInfo {
  PlantCardInfo(this.imagePath, this.imageName, this.plantWidget)
      : id = uuid.v4();
  final String id;
  final String imagePath;
  final String imageName;
  final Widget plantWidget;
}
