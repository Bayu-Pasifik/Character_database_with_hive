import 'package:flutter/material.dart';

class CountryCard extends StatelessWidget {
  const CountryCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String? pathAssets;
    return Container(
      width: MediaQuery.of(context).size.width / 12,
      height: MediaQuery.of(context).size.height / 20,
      decoration: BoxDecoration(
          color: Colors.grey,
          image: DecorationImage(image: AssetImage(pathAssets!))),
    );
  }
}
