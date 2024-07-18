import 'package:ecommerce_admin/src/core/colors.dart/colors.dart';
import 'package:ecommerce_admin/src/shared/domain/models/admin_data_model.dart';
import 'package:ecommerce_admin/src/shared/presentation/bloc/auth/auth_bloc.dart';
import 'package:ecommerce_admin/src/core/sized_box.dart/height_width.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ElevatedButtonWidget extends StatelessWidget {
  ElevatedButtonWidget({
    super.key,
    required this.backgroundColor,
    required this.textColor,
    required this.fontSize,
    required this.text,
    required this.onPressed,
  });
  final Color backgroundColor;
  final Color textColor;
  final double? fontSize;
  FontWeight? fontWeight;
  final String text;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onPressed,
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(backgroundColor),
        ),
        child: Text(
          text,
          style: GoogleFonts.poppins(
            color: textColor, //white
            fontSize: fontSize, //18
            fontWeight: fontWeight, //w500
          ),
        ));
  }
}

///

class GoogleElevatedBottonWidget extends StatelessWidget {
  const GoogleElevatedBottonWidget({
    super.key,
    required this.size,
    this.onPressed,
    required this.text,
  });

  final Size size;
  final void Function()? onPressed;
  final String text;
  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
        onPressed: onPressed,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/google.png',
              width: (size.width / 2) * 0.2,
            ),
            kWidth10,
            Text(
              text,
              style: GoogleFonts.poppins(
                  color: kBlack, fontSize: 16, fontWeight: FontWeight.w600),
            ),
          ],
        ));
  }
}

//

class FamilyMartTitleWidgets extends StatelessWidget {
  const FamilyMartTitleWidgets({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Row(
      // crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
          children: [
            Container(
              alignment: Alignment.centerLeft,
              width: size.width / 2 * 0.67,
              // color: kDarkBlueColor,
              child: Image.asset(
                "assets/images/familymarticon.png",
                height: size.height / 2 * 0.1,
              ),
            ),
            Positioned(
              right: 1,
              child: Container(
                alignment: Alignment.center,
                height: 42,
                child: AnimatedTextKit(
                    totalRepeatCount: 3000,
                    pause: const Duration(milliseconds: 1000),
                    animatedTexts: [
                      ColorizeAnimatedText('AMILY MART',
                          textStyle: GoogleFonts.poppins(
                              fontSize: 15, fontWeight: FontWeight.w600),
                          colors: [kDarkBlueColor, kBlack])
                    ]),
              ),
            )
          ],
        ),
      ],
    );
  }
}

//
void adminSignInDataModelFun(
    String email, String password, BuildContext context) {
  final signInDataModel = AdminModelClass(
    emailId: email,
    password: password,
  );
  context.read<AuthBloc>().add(AuthEvent.logIn(signInDataModel));
}
