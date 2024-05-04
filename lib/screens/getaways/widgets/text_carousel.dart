import 'package:flutter/material.dart';

class TextCarousel extends StatelessWidget {
  const TextCarousel({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(
          left: 30,
        ),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: <Widget>[
              const Text(
                'Luxe',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                  decoration: TextDecoration.underline,
                  decorationColor: Colors.white,
                ),
              ),
              Container(
                width: 16,
              ),
              const Text(
                'Countryside',
                style: TextStyle(
                  fontSize: 16,
                  color: Color(0xff39414E),
                ),
              ),
              Container(
                width: 16,
              ),
              const Text(
                'Islands',
                style: TextStyle(
                  fontSize: 16,
                  color: Color(0xff39414E),
                ),
              ),
              Container(
                width: 16,
              ),
              const Text(
                'Private rooms',
                style: TextStyle(
                  fontSize: 16,
                  color: Color(0xff39414E),
                ),
              ),
              Container(
                width: 16,
              ),
              const Text(
                'Desert',
                style: TextStyle(
                  fontSize: 16,
                  color: Color(0xff39414E),
                ),
              )
            ],
          ),
        ));
  }
}