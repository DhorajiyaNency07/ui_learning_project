import 'package:flutter/material.dart';

class CommonButton extends StatelessWidget {
  final double? height;
  final double? width;
  final Icon? icon;
  final String? text;
  final GestureTapCallback? onTab;

  const CommonButton({
    Key? key,
    this.width,
    this.icon,
    this.text,
    this.height,
    this.onTab,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: height ?? MediaQuery.of(context).size.height / 18,
      width: width ?? MediaQuery.of(context).size.width / 1.8,
      decoration: const BoxDecoration(
        color: Color(0xff8BC83F),
        borderRadius: BorderRadius.all(
          Radius.circular(8),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // ElevatedButton(
          //   onPressed: onTab,
          //   // style: ButtonStyle(backgroundColor: Color(0xff8BC83F),),
          //   child: Text(
          //     text ?? 'Next',
          //     style: const TextStyle(
          //       fontSize: 16,
          //       fontWeight: FontWeight.bold,
          //       color: Colors.white,
          //     ),
          //   ),
          // ),
          icon ?? const SizedBox(),
          Text(
            text ?? 'Next',
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
