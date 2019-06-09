import 'package:flutter/material.dart';

class ArcBannerImage extends StatelessWidget {
  ArcBannerImage({this.imageUrl});
  final String imageUrl;
  @override
  Widget build(BuildContext context) {
    var screenWidget = MediaQuery.of(context).size.width;
    return ClipPath(
      clipper: ArcClipper(),
      child: Image.asset(
        imageUrl,
        width: screenWidget,
        height: 230.0,
        fit: BoxFit.cover,
      ),
    );
  }
}

class ArcClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0.0, size.height - 30);

    var firstControlPoint = Offset(size.width / 4, size.height);
    var firstEndPoint = Offset(size.width / 2, size.height);
    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
        firstEndPoint.dx, firstEndPoint.dy);

    var secondControlPoint = Offset(size.width - size.width / 4, size.height);
    var secondEndPoint = Offset(size.width, size.height - 30);

    path.quadraticBezierTo(secondControlPoint.dx, secondControlPoint.dy,
        secondEndPoint.dx, secondEndPoint.dy);

    path.lineTo(size.width, 0.0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
