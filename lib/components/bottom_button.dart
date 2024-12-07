import 'package:flutter/material.dart';
import '../constants.dart';

class BottomButton extends StatelessWidget {
  const BottomButton(this.onTap, this.buttonTitle, {super.key});
  final VoidCallback onTap;
  final String buttonTitle;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        color: kBottomColor,
        margin: const EdgeInsets.only(top: 10.0),
        width: double.infinity,
        padding: const EdgeInsets.only(bottom: 20.0),
        height: kBottomContainerHeight,
        child: Center(
          child: Text(
            buttonTitle,
            style: kLargeButtonStyle,
          ),
        ),
      ),
    );
  }
}