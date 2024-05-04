import 'package:flutter/material.dart';
import 'package:portofolio/screens/getaways/widgets/hotel_card.dart';

class HotelGrid extends StatelessWidget {
  const HotelGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                  child: HotelCard(
                      imagePath:
                          'images/r-architecture-GGupkreKwxA-unsplash.jpg')),
              Container(
                width: 10,
              ),
              Expanded(child: HotelCard(imagePath: 'images/suburb.jpg'))
            ],
          ),
          Container(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                  child: HotelCard(
                      imagePath:
                      'images/garden.png')),
              Container(
                width: 10,
              ),
              Expanded(child: HotelCard(imagePath: 'images/suite.png'))
            ],
          )
        ],
      ),
    );
  }
}
