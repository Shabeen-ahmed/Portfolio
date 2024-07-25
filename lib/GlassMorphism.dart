import 'dart:ui';

import 'package:flutter/material.dart';

class GlassMorphism extends StatelessWidget {
  const GlassMorphism(
      {super.key,
        required this.child,
        this.blur,
        this.opacity,
        this.color,
        this.borderRadius});
  final Widget child;
  final double? blur;
  final double? opacity;
  final Color? color;
  final BorderRadius? borderRadius;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      //           blur: 10,
      //           color: Colors.black,
      //           opacity: 0.2,
      //           borderRadius: BorderRadius.circular(12),
      borderRadius: borderRadius??BorderRadius.circular(10),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: blur??10, sigmaY: blur??10),
        child: Container(
          decoration: BoxDecoration(
              color: color!=null?color?.withOpacity(opacity??0.2):Colors.black.withOpacity(opacity??0.2), borderRadius: borderRadius),
          child: child,
        ),
      ),
    );
  }
}