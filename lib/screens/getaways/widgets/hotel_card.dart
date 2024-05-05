import 'package:flutter/material.dart';

class HotelCard extends StatelessWidget {
  final String imagePath;
  final String title;
  final String description;
  final String price;
  final String rating;

  const HotelCard(
      {super.key,
      required this.imagePath,
      required this.title,
      required this.description,
      this.price = '4.8',
      required this.rating});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(8),
      child: Container(
        width: double.infinity,
        color: const Color(0xff16202F),
        child: Stack(
          children: [
            Column(
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
                    padding: const EdgeInsets.only(left: 12),
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
                        ))),
                Container(
                  height: 12,
                ),
              ],
            ),
            Positioned(
              top: 139,
              right: 9,
              child: Container(
                  height: 21,
                  width: 46,
                  decoration: BoxDecoration(
                    color: const Color(0xff0C1015),
                    borderRadius: BorderRadius.circular(16),
                    border: Border.all(
                      color: const Color(0xff24496c),
                      width: 1,
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset('images/Star.png'),
                      Container(
                        width:2
                      ),
                      Text(
                        rating,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 10,
                        ),
                      )
                    ],
                  )),
            )
          ],
        ),
      ),
    );
  }
}
