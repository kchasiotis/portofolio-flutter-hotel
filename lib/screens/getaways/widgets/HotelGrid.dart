import 'package:flutter/material.dart';
import 'package:portofolio/screens/getaways/widgets/hotel_card.dart';

class HotelGrid extends StatelessWidget {
  const HotelGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              HotelCard(
                  imagePath: 'images/r-architecture-GGupkreKwxA-unsplash.jpg'),
              HotelCard(imagePath: 'images/suburb.jpg')
            ],
          ),
          Container(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              HotelCard(imagePath: 'images/garden.png'),
              HotelCard(imagePath: 'images/suite.png')
            ],
          )
        ],
      ),
    );
  }
}
