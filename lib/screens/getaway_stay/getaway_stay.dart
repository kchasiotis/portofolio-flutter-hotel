//create stateless widget
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

const String condoText = '''
A stay straight out of the pages of a Ruskin Bond novel

One of the most successful Luxe in India

• In Tandi, a village above Jibhi
• Tree inside. A balcony, double bed, and a remarkably clean, modern bathroom.
• Wheat and maize fields , apple and pear orchards
• You'll see flying squirrels in the night.
• Beautiful sunrise
• You'll get two dongles-Airtel and Jio-with as much data as you need
• Hair Dryer• Breakfast
• Oven/Toaster/Coffee Maker/Refrigerator

Parking spot is available.
''';

class GetawayStay extends StatelessWidget {
  const GetawayStay({Key? key}) : super(key: key);

  // todo: fix padding on floatingActionButton
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(left: 40, right: 10),
        child: SizedBox(
            width: double.infinity,
            height: 59,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              child: const Text('Continue to reserve',
                  style: TextStyle(fontSize: 16, color: Colors.black)),
            )),
      ),
      body: Column(children: [
        Expanded(
            child: Stack(children: [
          Image.asset('images/getaway/urban-luxe.png',
              fit: BoxFit.cover,
              width: double.infinity,
              height: double.infinity),
          Positioned(
              bottom: 0,
              child: Container(
                height: 60,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: const Color(0xff0C1015).withOpacity(0.95),
                  border: Border(
                      top: BorderSide(
                          color: Colors.white.withOpacity(0.2), width: 1)),
                  borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(32),
                      topLeft: Radius.circular(32)),
                ),
                child: const Padding(
                  padding: EdgeInsets.only(left: 30, right: 30),
                  child: Align(
                    alignment: Alignment.bottomLeft,
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Urban Luxe',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 26)),
                          Text(
                            '3,899\$',
                            style: TextStyle(color: Colors.white, fontSize: 24),
                          )
                        ]),
                  ),
                ),
              )),
          Positioned(
              bottom: 43,
              right: 30,
              child: Container(
                  height: 33,
                  width: 74,
                  decoration: BoxDecoration(
                    color: const Color(0xff0C1015),
                    borderRadius: BorderRadius.circular(16),
                    border: Border.all(
                      color: const Color(0xff232830),
                      width: 1,
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(
                        'images/getaway/start.png',
                        width: 16,
                        height: 16,
                      ),
                      Container(width: 2),
                      const Text(
                        '4.8',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      )
                    ],
                  )))
        ])),
        Expanded(
          child: SingleChildScrollView(
            child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child:                     Column(children: [
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                          padding: EdgeInsets.only(top: 11),
                          child: Text('2 guests - 1 bedroom',
                              style: TextStyle(
                                  color: Color(0xff9E9FA1), fontSize: 16))),
                      Padding(
                          padding: EdgeInsets.only(top: 0),
                          child: Text('per night',
                              style: TextStyle(
                                  color: Color(0xff9E9FA1), fontSize: 14))),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Align(
                      alignment: Alignment.centerLeft,
                      child: Text('1 bed - 1 bathroom',
                          style: TextStyle(
                              color: Color(0xff9E9FA1), fontSize: 16))),
                  const SizedBox(
                    height: 20,
                  ),
                  const SizedBox(
                      width: double.infinity,
                      child: Divider(
                        thickness: 1,
                        color: Color(0xff39414E),
                        height: 1,
                      )),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Image.asset(
                            'images/getaway/profile-pic.png',
                            width: 50,
                            height: 50,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Mighty Zeus',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                ),
                              ),
                              Text(
                                '4.8 stars - 59 reviews',
                                style: TextStyle(
                                  color: Color(0xff9E9FA1),
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: Image.asset(
                              'images/getaway/message-question.png')),
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const SizedBox(
                      width: double.infinity,
                      child: Divider(
                        thickness: 1,
                        color: Color(0xff39414E),
                        height: 1,
                      )),
                  const SizedBox(
                    height: 30,
                  ),
                  const Text(condoText,
                      style: TextStyle(
                          color: Color(0xff9E9FA1), fontSize: 16)),
                ])),
          ),
        ),
      ]),
    );
  }
}
