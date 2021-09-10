import 'package:flutter/material.dart';
import 'package:flutter_study_material_app/commonControls/navigationHelper.dart';
import 'package:flutter_study_material_app/commonSupportingWidgets/QButton.dart';
import 'package:flutter_study_material_app/commonSupportingWidgets/Qtext.dart';
import 'package:flutter_study_material_app/modules/Animation/AnimationHome.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
                  push(context, AnimationHome());
                },
                title: "Animation",
              ),

            ],
          ),
        ),
      ),
    );
  }
}
