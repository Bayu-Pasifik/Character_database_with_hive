import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hive_character/ui/country_card.dart';

import 'japan_page.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
                onTap: () => Get.to(JapanPage()),
                child: CountryCard(
                  moveFunction: () {
                    Get.to(JapanPage());
                  },
                  ballColor: Colors.amber,
                  images: 'images/people1.svg',
                  title: 'Novel Jepang',
                  content: 'Kumpulan nama nama \ncharacter  dari novel jepang',
                )),
          ],
        ),
      ),
    );
  }
}
