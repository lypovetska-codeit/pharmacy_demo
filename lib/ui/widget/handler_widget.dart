import 'package:flutter/material.dart';

class HandlerWidget extends StatelessWidget {
  const HandlerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 15,
      child: CustomPaint(
        painter: _HandlerPainter(),
      ),
    );
  }
}

class _HandlerPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.white
      ..style = PaintingStyle.fill;

    const handlerWidth = 28;
    const handlerHeight = 4.0;
    const handlerHorizontalPadding = 6.0;
    const handlerBottomPadding = 3.0;

    final paintIndicator = Paint()
      ..color = Colors.white
      ..strokeCap = StrokeCap.round
      ..style = PaintingStyle.stroke
      ..strokeWidth = handlerHeight;

    canvas.drawLine(
      Offset(size.width / 2 - handlerWidth / 2, handlerHeight / 3),
      Offset(size.width / 2 + handlerWidth / 2, handlerHeight / 3),
      paintIndicator,
    );

    final path = Path()
      ..moveTo(0, 0)
      ..lineTo(size.width / 2 - handlerWidth / 2 - handlerHorizontalPadding, 0)
      ..cubicTo(
        // control point 1
        size.width / 2 - handlerWidth / 2 - handlerHorizontalPadding / 2,
        0,
        // control point 2
        size.width / 2 - handlerWidth / 2 - handlerHorizontalPadding / 2,
        handlerHeight + handlerBottomPadding,
        // target point
        size.width / 2 - handlerWidth / 2,
        handlerHeight + handlerBottomPadding,
      )
      ..lineTo(size.width / 2 + handlerWidth / 2, handlerHeight + handlerBottomPadding)
      ..cubicTo(
        //control point 1
        size.width / 2 + handlerWidth / 2 + handlerHorizontalPadding * 0.5,
        handlerHeight + handlerBottomPadding,
        // control pont 2
        size.width / 2 + handlerWidth / 2 + handlerHorizontalPadding * 0.5,
        0,
        // target point
        size.width / 2 + handlerWidth / 2 + handlerHorizontalPadding,
        0,
      )
      ..lineTo(size.width, 0)
      ..lineTo(size.width, size.height)
      ..lineTo(0, size.height)
      ..close();
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
