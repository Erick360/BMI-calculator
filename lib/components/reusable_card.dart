import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class ReusableCard extends StatelessWidget {
  const ReusableCard(this.onTab,this.colour, this.cardChild,{super.key});
  final VoidCallback onTab;
  final Color colour;
  final Widget cardChild;


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTab,
      child: Container(
        margin: const EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color:  colour,
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: cardChild,
      ),
    );
  }
}