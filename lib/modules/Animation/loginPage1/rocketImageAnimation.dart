import 'package:flutter/material.dart';
import 'package:flutter_study_material_app/modules/Animation/loginPage1/res/image.dart';

class RocketImageAnimation extends StatefulWidget {
  @override
  _RocketImageAnimationState createState() => _RocketImageAnimationState();
}

class _RocketImageAnimationState extends State<RocketImageAnimation>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    vsync: this,
    duration: Duration(seconds: 2),
  )..repeat(reverse: true);

  late Animation<Offset> _animation = Tween(
    begin: Offset.zero,
    end: Offset(0, 0.08),
  ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeInOut));

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: _animation,
      child: Image.asset(rocketPersonImg),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
