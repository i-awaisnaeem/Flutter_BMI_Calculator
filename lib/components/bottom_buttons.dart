import 'package:flutter/material.dart';
import '../constants.dart';


class BottomButton extends StatelessWidget {
  final VoidCallback onTap;
  final String buttonTitle;

  const BottomButton({super.key, required this.onTap,required this.buttonTitle});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap : onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 17,vertical: 30),
        child: Container(
          decoration: BoxDecoration(
              color: kBottomContainerColor,
          borderRadius: BorderRadius.circular(15)),
          margin: const EdgeInsets.only(top: 10.0),
          width: double.infinity,
          height: kBottonContainerHeight,
          child: Center(child: Text(buttonTitle, style: kLargeButtonTextStyle,)),
        ),
      ),
    );
  }
}
