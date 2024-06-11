// This would be my recognized plant list - remember that
import 'package:flutter/material.dart';
import 'package:final_plant_app_2/models/plant_card_info.dart';
import 'package:final_plant_app_2/screens/african_violet.dart';
import 'package:final_plant_app_2/screens/aloe_vera.dart';
import 'package:final_plant_app_2/screens/boston_fern.dart';
import 'package:final_plant_app_2/screens/devils_ivy.dart';
import 'package:final_plant_app_2/screens/peace-lily.dart';
import 'package:final_plant_app_2/screens/rubber_plant.dart';
import 'package:final_plant_app_2/screens/snake_plant.dart';
import 'package:final_plant_app_2/screens/spider_plant.dart';
import 'package:final_plant_app_2/screens/weeping_fig.dart';
import 'package:final_plant_app_2/screens/zz_plant.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'dart:io';

class UserPlantsNotifier extends StateNotifier<List<PlantCardInfo>> {
  UserPlantsNotifier() : super(const []);

  void addPlant(String path, String name, Widget wid) {
    final newPlant = PlantCardInfo(path, name, wid);
    state = [newPlant, ...state];
  }
}

final userPlantsProvider =
    StateNotifierProvider<UserPlantsNotifier, List<PlantCardInfo>>(
  (ref) => UserPlantsNotifier(),
);
