import 'package:flutter/material.dart';

class CountryCard extends StatelessWidget {
  final String pathAsset;
  final Function moveFunction;
  const CountryCard(
      {Key? key, required this.pathAsset, required this.moveFunction})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(15),
      elevation: 10,
      child: GestureDetector(
        onTap: () {
          moveFunction();
        },
        child: Container(
          width: 165,
          height: 140,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              shape: BoxShape.rectangle,
              image: DecorationImage(
                  image: AssetImage(pathAsset), fit: BoxFit.cover)),
        ),
      ),
    );
  }
}
