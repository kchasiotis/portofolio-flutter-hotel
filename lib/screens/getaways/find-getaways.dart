import 'package:flutter/material.dart';
import 'package:portofolio/screens/getaways/widgets/input_widget.dart';
import 'widgets/hotel_card.dart';

//todo: set distances as constants
class FindGetaways extends StatelessWidget {
  const FindGetaways({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        color: const Color(0xff0C1015),
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
          Padding(
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
              )),
          Container(
            height: 20,
          ),
          Container(
            child: Column(
              children: [HotelCard()],
            ),
          )
        ]));
  }
}
