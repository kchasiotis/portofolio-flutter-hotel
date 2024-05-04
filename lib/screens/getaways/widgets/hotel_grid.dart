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
                      title: 'Urban Luxe',
                      description: 'Book your getaway to this contem...',
                      price: '3,899\$',
                      rating: '4.8',
                      imagePath:
                          'images/r-architecture-GGupkreKwxA-unsplash.jpg')),
              Container(
                width: 10,
              ),
              Expanded(
                  child: HotelCard(
                      title: 'Suburban Luxe',
                      description: 'Book your getaway to this contem...',
                      price: '3,349\$',
                      rating: '4.8',
                      imagePath: 'images/suburb.jpg'))
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
                      title: 'Burbon Luxe',
                      description: 'Book your getaway to this contem...',
                      price: '3,899\$',
                      rating: '4.8',
                      imagePath: 'images/garden.png')),
              Container(
                width: 10,
              ),
              Expanded(
                  child: HotelCard(
                      title: 'Suburbon Luxe',
                      description: 'Book your getaway to this contem...',
                      price: '3,899\$',
                      rating: '4.8',
                      imagePath: 'images/suite.png'))
            ],
          )
        ],
      ),
    );
  }
}
