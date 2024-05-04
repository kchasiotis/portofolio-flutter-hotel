import 'package:flutter/material.dart';

class HotelCard extends StatelessWidget {
  final String imagePath;
  final String title;
  final String description;
  final String price;
  final String rating;

  HotelCard(
      {required this.imagePath,
      required this.title,
      required this.description,
      required this.price,
      required this.rating});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(8),
      child: Container(
        width: double.infinity,
        color: const Color(0xff16202F),
        child: Column(
          children: <Widget>[
            Image(
              image: AssetImage(imagePath),
              fit: BoxFit.cover,
              height: 150,
              width: double.infinity,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, left: 12),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  title,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 12,
              ),
              child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    description,
                    style: const TextStyle(
                      color: Colors.white54,
                      fontSize: 12,
                      fontWeight: FontWeight.w100,
                    ),
                  )),
            ),
            Container(
              height: 16,
            ),
            Padding(
                child: Align(
                    alignment: Alignment.centerLeft,
                    child: Row(
                      children: [
                        Text(
                          price,
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const Text(
                          '/',
                          style: TextStyle(
                            color: Colors.white54,
                            fontSize: 12,
                            fontWeight: FontWeight.w100,
                          ),
                        ),
                        const Text(
                          'night',
                          style: TextStyle(
                            color: Colors.white54,
                            fontSize: 10,
                            fontWeight: FontWeight.w100,
                          ),
                        ),
                      ],
                    )),
                padding: const EdgeInsets.only(left: 12)),
            Container(
              height: 12,
            ),
          ],
        ),
      ),
    );
  }
}
