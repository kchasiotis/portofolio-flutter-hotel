//create stateless widget
import 'package:flutter/material.dart';

class GetawayStay extends StatelessWidget {
  const GetawayStay({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          child: Container(),
        ),
      ]),
    );
  }
}
