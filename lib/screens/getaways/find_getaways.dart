import 'package:flutter/material.dart';
import 'package:portofolio/screens/getaways/widgets/text_carousel.dart';
import 'package:portofolio/screens/getaways/widgets/input_widget.dart';
import 'widgets/hotel_grid.dart';

//todo: set distances as constants
class FindGetaways extends StatelessWidget {
  const FindGetaways({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(children: <Widget>[
      const Padding(
          padding: EdgeInsets.only(left: 30, right: 30, top: 70),
          child: Text(
            'Find the best getaways for you',
            style: TextStyle(fontSize: 32, color: Colors.white),
          )),
      Container(
        height: 24,
      ),
      Container(
        height: 24,
      ),
      const Padding(
        padding: EdgeInsets.only(left: 30, right: 30),
        child: InputWidget(),
      ),
      Container(
        height: 24,
      ),
      const TextCarousel(),
      Container(
        height: 20,
      ),
      const HotelGrid(),
    ]));
  }
}
