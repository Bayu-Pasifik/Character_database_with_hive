import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:hive/hive.dart';
import 'package:hive_character/controller/theme_controller.dart';
import 'package:hive_character/pages/main_page.dart';
import 'package:path_provider/path_provider.dart' as pathProvider;

import 'model/japan_character.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final theme = Get.put(ThemeController());
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      //theme: theme.isDark.value ? ThemeData.dark() : ThemeData.light(),
      home: MainPage(),
    );
  }
}
