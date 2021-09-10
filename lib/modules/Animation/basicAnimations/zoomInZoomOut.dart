import 'package:flutter/material.dart';

class ZoomInZoomOut extends StatefulWidget {
  @override
  _ZoomInZoomOutState createState() => _ZoomInZoomOutState();
}

class _ZoomInZoomOutState extends State<ZoomInZoomOut>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    vsync: this,
    duration: Duration(milliseconds: 500),
  );

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
