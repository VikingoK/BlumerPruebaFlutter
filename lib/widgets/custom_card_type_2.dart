import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

class CustomCardType2 extends StatelessWidget {
  final String imageUrl;

  const CustomCardType2({Key? key, required this.imageUrl})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shadowColor: AppTheme.primary.withOpacity(0.4),
      child: Column(
        children: [
          FadeInImage(
              image: NetworkImage(imageUrl),
              placeholder: const AssetImage('assets/jar-loading.gif'),
              width: double.infinity,
              height: 670,
              fit: BoxFit.cover,
              fadeInDuration: const Duration(milliseconds: 300)),
        ],
      ),
    );
  }
}
