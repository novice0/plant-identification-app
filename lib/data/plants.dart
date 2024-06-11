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

final plants = [
  PlantCardInfo(
      'assets/images/spider-plant-1.jpg', 'Spider Plant', SpiderPlant()),
  PlantCardInfo('assets/images/snake-plant-1.png', 'Snake Plant', SnakePlant()),
  PlantCardInfo('assets/images/peace-lily-1.jpg', 'Peace Lily', PeaceLily()),
  PlantCardInfo('assets/images/weeping-fig-1.jpg', 'Weeping Fig', WeepingFig()),
  PlantCardInfo('assets/images/aloe-vera-1.jpeg', 'Aloe Vera ', AloeVera()),
  PlantCardInfo('assets/images/devils-ivy-1.jpg', "Devil's Ivy", DevilsIvy()),
  PlantCardInfo(
      'assets/images/rubber-plant-1.jpg', 'Rubber Plant', RubberPlant()),
  PlantCardInfo(
      'assets/images/african-violet-1.jpg', 'African Violet', AfricanViolet()),
  PlantCardInfo('assets/images/boston-fern-1.jpg', 'Boston Fern', BostonFern()),
  PlantCardInfo('assets/images/zz-plant-1.jpg', 'ZZ Plant', ZzPlant()),
];
