import 'package:flutter/material.dart';

class RichTextScreen extends StatelessWidget {
  const RichTextScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        RichText(
          text: const TextSpan(
            children: [
              TextSpan(
                text: 'Halloween \nSale!',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  height: 1.2,
                  letterSpacing: 0.7,
                  color: Colors.white,
                ),
              ),
              TextSpan(
                text: '\nAll discount up to 60%',
                style: TextStyle(
                  color: Color.fromRGBO(
                      255, 255, 255, 70),
                  height: 3,
                  letterSpacing: 0.7,
                  fontWeight: FontWeight.w400,
                  fontSize: 10,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}