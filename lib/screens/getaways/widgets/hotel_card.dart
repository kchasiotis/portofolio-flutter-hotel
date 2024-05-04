// create stateless widget
import 'package:flutter/material.dart';

class HotelCard extends StatelessWidget {
  final String imagePath;
  HotelCard({required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: Container(
        width: 150,
        color: const Color(0xff16202F),
        child: Column(
          children: <Widget>[
            Image(
              image:
                  AssetImage(imagePath),
              fit: BoxFit.cover,
              height: 160,
              width: 150,
            ),
            Padding(
              padding: EdgeInsets.only(top: 10, left: 12),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Urban Luxe',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 12,
              ),
              child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Book your getaway to this contem...',
                    style: TextStyle(
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
                          '3,899\$',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          '/',
                          style: TextStyle(
                            color: Colors.white54,
                            fontSize: 12,
                            fontWeight: FontWeight.w100,
                          ),
                        ),
                        Text(
                          'night',
                          style: TextStyle(
                            color: Colors.white54,
                            fontSize: 10,
                            fontWeight: FontWeight.w100,
                          ),
                        ),

                      ],
                    )),
                padding: EdgeInsets.only(left: 12)),
            Container(
              height: 12,
            ),
          ],
        ),
      ),
    );
  }
}
