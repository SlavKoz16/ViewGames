import 'package:flutter/material.dart';

void main() {
  runApp(HeptagonSecond());
}

class HeptagonSecond extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: CustomPaint(
            size: Size(340, 101),
            painter: SecondHeptagonPainter(),
          ),
        ),
      ),
    );
  }
}

class SecondHeptagonPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {

    Paint gradientPaint=Paint()
      ..shader=LinearGradient(
        begin: Alignment.topLeft,
        end:Alignment.bottomRight,
        colors: [
          Color(0xffDEDEDE),
          Color(0xff888888),
        ],
      ).createShader(Rect.fromLTWH(0, 0, size.width, size.height)
      );
    Paint borderPaint = Paint()
      ..color = Colors.black38
      ..style = PaintingStyle.stroke
      ..strokeWidth = 1.0;


    double cornerRadius = 12.0;

    Path heptagonPath = Path();


    heptagonPath.moveTo(cornerRadius, 0);//верхняя сторона
    heptagonPath.lineTo(size.width - cornerRadius, 0);//правый верхний угол
    heptagonPath.arcToPoint(
      Offset(size.width, cornerRadius),
      radius: Radius.circular(cornerRadius),
      clockwise: true,
    );

    heptagonPath.lineTo(size.width, size.height * 0.33);//первый правый угол
    heptagonPath.lineTo(size.width * 0.975, size.height * 0.49);//средний правый угол
    heptagonPath.lineTo(size.width, size.height * 0.67);//второй правый угол

    heptagonPath.lineTo(size.width, size.height - cornerRadius);
    heptagonPath.arcToPoint(
      Offset(size.width - cornerRadius, size.height),//правый нижний угол
      radius: Radius.circular(cornerRadius),
      clockwise: true,
    );
    heptagonPath.lineTo(cornerRadius, size.height );//нижняя сторона
    heptagonPath.arcToPoint(
      Offset(0, size.height - cornerRadius),//левый нижний угол
      radius: Radius.circular(cornerRadius),
      clockwise: true,
    );
    heptagonPath.lineTo(0, cornerRadius);//левая сторона
    heptagonPath.arcToPoint(
      Offset(cornerRadius, 0),//левый верхний угол
      radius: Radius.circular(cornerRadius),
      clockwise: true,
    );
    heptagonPath.close();

    canvas.drawShadow(heptagonPath, Colors.black, 4.0, true);
    canvas.drawPath(heptagonPath, gradientPaint);
    canvas.drawPath(heptagonPath, borderPaint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}