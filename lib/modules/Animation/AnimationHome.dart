import 'package:flutter/material.dart';
import 'package:flutter_study_material_app/commonControls/navigationHelper.dart';
import 'package:flutter_study_material_app/commonSupportingWidgets/QButton.dart';
import 'package:flutter_study_material_app/modules/Animation/basicAnimations/basicAnimationPage.dart';
import 'package:flutter_study_material_app/modules/Animation/loginPage1/loginPage1.dart';

class AnimationHome extends StatefulWidget {
  @override
  _AnimationHomeState createState() => _AnimationHomeState();
}

class _AnimationHomeState extends State<AnimationHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: [
              SizedBox(height: 16),
              QButton(
                onTap: () {
                  push(context, BasicAnimationPage());
                },
                title: "Basic Animations",
              ),
              SizedBox(height: 16),
              QButton(
                onTap: () {
                  push(context, LoginPage1());
                },
                title: "Login Page 1",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
