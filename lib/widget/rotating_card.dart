import 'package:flutter/material.dart';
import 'dart:math' as math;

class RotatingCard extends StatefulWidget {

  const RotatingCard(
    {
      required this.x,
      required this.y,
      required this.child,
      this.sensivityMultiplierX = 1.0,
      this.sensivityMultiplierY = 1.0,
      Key? key
    }
  ) : super(key: key);


  final double x;
  final double y;
  final Widget child;
  final double sensivityMultiplierX;
  final double sensivityMultiplierY;

  @override
  State<RotatingCard> createState() => _RotatingCardState();
}

class _RotatingCardState extends State<RotatingCard> {
  @override
  Widget build(BuildContext context) {
    return Transform(
      transform: Matrix4.identity()
        ..setEntry(3, 2, 0.001)
        ..rotateX(math.pi * (widget.y - 250) / 2000 * widget.sensivityMultiplierX)
        ..rotateY( - math.pi * (widget.x - 250) / 2000 * widget.sensivityMultiplierY),
      alignment: Alignment.center,
      child: Container(
        alignment: Alignment.center,
        child: widget.child
      )
    );
  }
}


