import 'package:flutter/material.dart';

class RecommendationText extends StatelessWidget {
  final String label;
  final Color rangi;
  final int size;

  const RecommendationText({
    Key? key,
    required this.label,
    required this.size,
    required this.rangi,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 12.0,
        top: 12.0,
      ),
      child: Text(
        label,
        style: TextStyle(
          color: rangi,
          fontSize: size.toDouble(),
        ),
      ),
    );
  }
}
