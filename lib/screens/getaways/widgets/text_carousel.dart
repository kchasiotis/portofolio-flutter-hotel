import 'package:flutter/material.dart';

class TextElement extends StatelessWidget {
  const TextElement({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(
          left: 16,
        ),
        child: Text(
          text,
          style: const TextStyle(
            fontSize: 16,
            color: Color(0xff39414E),
          ),
        ));
  }
}

class TextCarousel extends StatelessWidget {
  const TextCarousel({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
        padding: EdgeInsets.only(
          left: 30,
        ),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: <Widget>[
              Text(
                'Luxe',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                  decoration: TextDecoration.underline,
                  decorationColor: Colors.white,
                ),
              ),
              TextElement(
                text: 'Countryside',
              ),
              TextElement(
                text: 'Islands',
              ),
              TextElement(
                text: 'Private rooms',
              ),
              TextElement(
                text: 'Desert',
              ),
            ],
          ),
        ));
  }
}
