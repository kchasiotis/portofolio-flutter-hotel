import 'package:flutter/material.dart';
import 'package:portofolio/screens/getaways/widgets/input_widget.dart';

class FindGetaways extends StatelessWidget {
  const FindGetaways({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        color: const Color(0xff0C1015),
        child: Padding(
            padding: const EdgeInsets.only(left: 30, right: 30, top: 70),
            child: Column(children: <Widget>[
              const Text(
                'Find the best getaways for you',
                style: TextStyle(fontSize: 32, color: Colors.white),
              ),
              Container(
                height: 24,
              ),
              const InputWidget(),
            ])));
  }
}
