import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hive_character/controller/theme_controller.dart';
import 'package:hive_character/ui/country_card.dart';

import 'japan_page.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //final theme = Get.find<ThemeController>();
    return Scaffold(
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () => Get.changeTheme(ThemeData.dark()),
            child: Icon(Icons.dark_mode),
          ),
          SizedBox(
            width: 20,
          ),
          FloatingActionButton(
            onPressed: () => Get.changeTheme(ThemeData.light()),
            child: Icon(Icons.light),
          ),
        ],
      ),
      body: Center(
        child: ListView(
          //mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
                onTap: () => Get.to(JapanPage()),
                child: CountryCard(
                  moveFunction: () {
                    Get.to(() => JapanPage());
                  },
                  ballColor: Colors.amber,
                  images: 'images/people1.svg',
                  title: 'Novel Jepang',
                  content: 'Kumpulan nama nama \ncharacter  dari novel jepang',
                )),
            SizedBox(
              height: 20,
            ),
            GestureDetector(
                onTap: () => Get.to(JapanPage()),
                child: CountryCard(
                  moveFunction: () {
                    Get.to(JapanPage());
                  },
                  ballColor: Colors.teal,
                  images: 'images/people2.svg',
                  title: 'Novel Korea',
                  content: 'Kumpulan nama nama \ncharacter  dari novel korea',
                )),
            SizedBox(
              height: 20,
            ),
            GestureDetector(
                onTap: () => Get.to(JapanPage()),
                child: CountryCard(
                  moveFunction: () {
                    Get.to(JapanPage());
                  },
                  ballColor: Colors.cyan,
                  images: 'images/people3.svg',
                  title: 'Novel China',
                  content: 'Kumpulan nama nama \ncharacter  dari novel china',
                )),
          ],
        ),
      ),
    );
  }
}
