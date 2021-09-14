import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CountryCard extends StatelessWidget {
  final Function moveFunction;
  final String images;
  final Color ballColor;
  final String title;
  final String content;
  const CountryCard(
      {Key? key,
      required this.moveFunction,
      required this.images,
      required this.ballColor,
      required this.title,
      required this.content})
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
          width: MediaQuery.of(context).size.width - 90,
          height: MediaQuery.of(context).size.height - 600,
          decoration: BoxDecoration(
            color: Color(0xfffbf5ea),
            borderRadius: BorderRadius.circular(180),
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
                  ),
                ),
              ),
              Positioned(
                left: 200,
                child: SvgPicture.asset(
                  images,
                  fit: BoxFit.cover,
                  height: MediaQuery.of(context).size.height - 600,
                  width: MediaQuery.of(context).size.width - 90,
                  color: Colors.blue,
                ),
              ),
              Positioned(
                top: 20,
                left: 3,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Container(
                    width: MediaQuery.of(context).size.width - 250,
                    height: MediaQuery.of(context).size.height - 740,
                    color: Colors.green,
                    child: Text(
                      title,
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  ),
                ),
              ),
              Positioned(
                  top: 100,
                  left: 2,
                  child: Text(
                    content,
                    style: TextStyle(fontSize: 15, color: Colors.black87),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
