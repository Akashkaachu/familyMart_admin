import 'package:ecommerce_admin/src/core/colors.dart/colors.dart';
import 'package:ecommerce_admin/src/core/sized_box.dart/height_width.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextFormFieldWidget extends StatelessWidget {
  const TextFormFieldWidget(
      {super.key,
      this.keyboardType,
      this.onChanged,
      this.obscureText = false,
      this.controller,
      this.suffixIcon,
      this.fillColor,
      this.suffixOnPressed,
      this.suffixIconColor,
      this.preffixIcon,
      required this.label,
      this.hintText,
      this.validator,
      this.maxLines = 1,
      this.star,
      this.labelColor,
      this.textStyleColor});
  final TextInputType? keyboardType;
  final void Function(String)? onChanged;
  final bool obscureText;
  final TextEditingController? controller;
  final int maxLines;
  final IconData? suffixIcon;
  final Color? fillColor;
  final void Function()? suffixOnPressed;
  final Color? suffixIconColor;
  final IconData? preffixIcon;
  final String label;
  final String? hintText;
  final String? star;
  final String? Function(String?)? validator;
  final Color? labelColor;
  final Color? textStyleColor;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RichText(
          text: TextSpan(
            text: label,
            style: GoogleFonts.poppins(
                fontSize: 17, fontWeight: FontWeight.w500, color: labelColor),
            children: [
              TextSpan(text: star, style: GoogleFonts.poppins(color: kRed)),
            ],
          ),
        ),
        kHeight10,
        TextFormField(
          keyboardType: keyboardType,
          onChanged: onChanged,
          obscureText: obscureText,
          controller: controller,
          maxLines: maxLines,
          validator: validator,
          style: TextStyle(color: textStyleColor),
          decoration: InputDecoration(
            focusColor: Colors.amber,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            fillColor: fillColor,
            suffixIcon: suffixIcon == null
                ? null
                : IconButton(
                    onPressed: suffixOnPressed,
                    icon: Icon(
                      suffixIcon,
                      color: suffixIconColor,
                    )),
            prefixIcon: preffixIcon == null
                ? null
                : Icon(
                    preffixIcon,
                    color: kBlack,
                  ),
            hintText: hintText,
            focusedBorder: const OutlineInputBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(5),
                ),
                borderSide: BorderSide(color: kWAppColor)),
          ),
        ),
      ],
    );
  }
}
