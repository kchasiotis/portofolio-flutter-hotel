import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

const textSvg = '''
<svg width="20" height="20" viewBox="0 0 20 20" fill="none" xmlns="http://www.w3.org/2000/svg">
<path d="M9.16675 16.6667C13.3089 16.6667 16.6667 13.3088 16.6667 9.16667C16.6667 5.02454 13.3089 1.66667 9.16675 1.66667C5.02461 1.66667 1.66675 5.02454 1.66675 9.16667C1.66675 13.3088 5.02461 16.6667 9.16675 16.6667Z" stroke="white" stroke-opacity="0.2" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M15.775 17.2415C16.2167 18.5748 17.225 18.7082 18 17.5415C18.7084 16.4748 18.2417 15.5998 16.9584 15.5998C16.0084 15.5915 15.475 16.3332 15.775 17.2415Z" stroke="white" stroke-opacity="0.2" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/>
</svg>
''';

class CustomTextField extends StatefulWidget {
  const CustomTextField({super.key});

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  late TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  onSubmitted(String value) async {
    await showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Thanks!'),
          content: Text(
              'You typed "$value", which has length ${value.characters.length}.'),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('OK'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: _controller,
      onSubmitted: onSubmitted,
      decoration: InputDecoration(
        isDense: true,
        // this will remove the default content padding
      hoverColor: Colors.white,
        hintText: 'find your desired stay',
        hintStyle: const TextStyle(color: Color(0xff39414E)),
        prefixIcon:                                   SvgPicture.string(
          textSvg,
          width: 20,
          height: 20,
        ),
        prefixIconConstraints: const BoxConstraints(
          minWidth: 20,
        ),
        contentPadding: const EdgeInsets.symmetric(vertical: 16),
        prefix: Container(
          width: 8,
        ),
      ),
      style: TextStyle(color: Colors.grey[50]),
    );
  }
}
