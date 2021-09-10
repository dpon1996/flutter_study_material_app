import 'package:flutter/material.dart';
import 'package:flutter_study_material_app/commonRes/colors.dart';
import 'package:flutter_study_material_app/commonSupportingWidgets/QButton.dart';
import 'package:flutter_study_material_app/commonSupportingWidgets/Qtext.dart';
import 'package:flutter_study_material_app/modules/Animation/loginPage1/res/image.dart';
import 'package:flutter_study_material_app/modules/Animation/loginPage1/rocketImageAnimation.dart';
import 'package:iconsax/iconsax.dart';

class LoginPage1 extends StatefulWidget {
  @override
  _LoginPage1State createState() => _LoginPage1State();
}

class _LoginPage1State extends State<LoginPage1> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color(0xff8F88E5),
            Color(0xff8F88E5).withOpacity(.9),
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              SizedBox(height: MediaQuery.of(context).padding.top + 16),
              Center(
                child: Stack(
                  children: [
                    RocketImageAnimation(),
                    Image.asset(
                      cloudImg,
                      fit: BoxFit.cover,
                    )
                  ],
                ),
              ),
              SizedBox(height: 30),
              QText(
                "Hi there!",
                color: Colors.white,
                fontWeight: FontWeight.w500,
                fontSize: 18,
              ),
              SizedBox(height: 12),
              QText(
                "Let's Get Started",
                color: Colors.white,
                fontSize: 30,
                fontWeight: FontWeight.w900,
              ),

              SizedBox(height: 30),

              ///user name text field
              Container(
                height: 55,
                alignment: Alignment.center,
                padding: EdgeInsets.symmetric(horizontal: 12),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Username",
                    icon: Icon(Iconsax.user_cirlce_add),
                  ),
                ),
              ),
              SizedBox(height: 16),

              ///password text field
              Container(
                height: 55,
                alignment: Alignment.center,
                padding: EdgeInsets.symmetric(horizontal: 12),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Password",
                    icon: Icon(Iconsax.lock_circle),
                  ),
                ),
              ),

              SizedBox(height: 20),

              ///login button
              QButton(
                title: "Log In",
                onTap: () {},
                color: Color(0xff52439A),
                radius: 30,
                height: 60,
                elevation: 3,
              ),

              SizedBox(height: 40),

              ///
              Row(
                children: [
                  Expanded(
                    child: Divider(
                      color: Colors.white,
                      endIndent: 10,
                    ),
                  ),
                  QText("Or", color: Colors.white),
                  Expanded(
                    child: Divider(
                      color: Colors.white,
                      indent: 10,
                    ),
                  ),
                ],
              ),

              SizedBox(height: 40),

              ///sign up button
              QButton(
                title: "Create an Account",
                onTap: () {},
                color: Color(0xffF5F7F9),
                titleColor: Color(0xff52439A),
                radius: 30,
                height: 60,
                elevation: 5,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
