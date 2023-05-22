import 'package:flutter/material.dart';
import 'package:spotify_flutter_web/constants.dart';

class LinePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = kIconNotSelected
      ..strokeWidth = 2.0;

    final startPoint = Offset(0, size.height / 2);
    final endPoint = Offset(size.width, size.height / 2);

    canvas.drawLine(startPoint, endPoint, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}

class LineWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: LinePainter(),
      child: Container(
        height: 1, // Adjust the height of the line
      ),
    );
  }
}
