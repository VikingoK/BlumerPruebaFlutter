import 'package:flutter/material.dart';

class CustomIconItem extends StatelessWidget {
  final IconData icono;
  final double width;
  final double height;
  final double size;

  const CustomIconItem({
    Key? key,
    required this.icono,
    this.width = 80,
    this.height = 80,
    this.size = 50,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: width, height: height, child: Icon(icono, size: size));
  }
}
