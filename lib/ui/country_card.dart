import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CountryCard extends StatelessWidget {
  final String pathAsset;
  final Function moveFunction;
  final String images;
  final Color ballColor;
  const CountryCard(
      {Key? key,
      required this.pathAsset,
      required this.moveFunction,
      required this.images,
      required this.ballColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(12),
      elevation: 10,
      child: GestureDetector(
        onTap: () {
          moveFunction();
        },
        child: Container(
          width: MediaQuery.of(context).size.width - 90,
          height: MediaQuery.of(context).size.height - 600,
          decoration: BoxDecoration(
              // borderRadius: BorderRadius.circular(15),
              // shape: BoxShape.rectangle,
              // image: DecorationImage(
              //     image: AssetImage(pathAsset), fit: BoxFit.cover)
              ),
          child: Stack(
            children: [
              Positioned(
                right: -50,
                bottom: 25,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(180),
                  child: Container(
                    width: 200,
                    height: 200,
                    color: ballColor,
                    child: SvgPicture.asset(images),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
