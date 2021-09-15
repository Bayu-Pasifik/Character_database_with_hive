import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hive_character/ui/country_card.dart';

import 'japan_page.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.dark_mode),
      ),
      body: Center(
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              flex: 1,
              child: GestureDetector(
                  onTap: () => Get.to(JapanPage()),
                  child: CountryCard(
                    moveFunction: () {
                      Get.to(() => JapanPage());
                    },
                    ballColor: Colors.amber,
                    images: 'images/people1.svg',
                    title: 'Novel Jepang',
                    content:
                        'Kumpulan nama nama \ncharacter  dari novel jepang',
                  )),
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
              flex: 1,
              child: GestureDetector(
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
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
              flex: 1,
              child: GestureDetector(
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
            ),
          ],
        ),
      ),
    );
  }
}
