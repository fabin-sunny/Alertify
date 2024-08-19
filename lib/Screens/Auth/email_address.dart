import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'dart:math' as math;
import 'package:taskez/Screens/Auth/login.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:taskez/Values/values.dart';
import 'package:taskez/widgets/DarkBackground/darkRadialBackground.dart';
import 'package:taskez/widgets/Forms/form_input_with%20_label.dart';
import 'package:taskez/widgets/Navigation/back.dart';
import 'package:taskez/widgets/Shapes/background_hexagon.dart';


class EmailAddressScreen extends StatefulWidget {
  @override
  _EmailAddressScreenState createState() => _EmailAddressScreenState();
}

class _EmailAddressScreenState extends State<EmailAddressScreen> {
  TextEditingController _nameController = new TextEditingController();
  TextEditingController _passController = new TextEditingController();
  TextEditingController _emailController = new TextEditingController();
  bool obscureText = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: [
      DarkRadialBackground(
        color: HexColor.fromHex("#181a1f"),
        position: "topLeft",
      ),
      Positioned(
          top: Utils.screenHeight / 2,
          left: Utils.screenWidth,
          child: Transform.rotate(angle: -math.pi / 2, child: CustomPaint(painter: BackgroundHexagon()))),
      Padding(
        padding: EdgeInsets.all(20.0),
        child: SafeArea(
            child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          NavigationBack(),
          SizedBox(height: 40),
          Text("Sign Up",
              style: GoogleFonts.lato(color: Colors.white, fontSize: 40, fontWeight: FontWeight.bold)),
          AppSpaces.verticalSpace20,
          LabelledFormInput(
              placeholder: "Email",
              keyboardType: "text",
              controller: _emailController,
              obscureText: obscureText,
              label: "Your Email"),
          SizedBox(height: 15),
          
            LabelledFormInput(
                placeholder: "Name",
                keyboardType: "text",
                controller: _nameController,
                obscureText: obscureText,
                label: "Your Name"),
            SizedBox(height: 15),
            LabelledFormInput(
                placeholder: "Password",
                keyboardType: "text",
                controller: _passController,
                obscureText: obscureText,
                label: "Your Password"),
                SizedBox(height: 15),
          Container(
            //width: 180,
            height: 60,
            child: ElevatedButton(
                onPressed: () {
                  Get.to(() => Login());
                },
                style: ButtonStyles.blueRounded,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.email, color: Colors.white),
                    Text('   Sign Up', style: GoogleFonts.lato(fontSize: 20, color: Colors.white)),
                  ],
                )),
          )
        ])),
      )
    ]));
  }
}
