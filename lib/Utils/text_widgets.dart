import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

gap({double? height, double? width, Widget? child}) {
  return SizedBox(
    height: height,
    width: width,
    child: child,
  );
}


class TextWidgets {
  textWith300({
    required String text,
    TextAlign? align,
    double? size,
    Color? color,
  }) {
    return Text(
      text,
      textAlign: align,
      overflow: TextOverflow.visible,
      softWrap: true,
      style: GoogleFonts.roboto(
          fontSize: size, color: color, fontWeight: FontWeight.w300),
    );
  }

  textWith600({
    required String text,
    TextAlign? align,
    double? size,
    Color? color,
  }) {
    return Text(
      text,
      textAlign: align,
      overflow: TextOverflow.visible,
      softWrap: true,
      style: GoogleFonts.roboto(
          fontSize: size, color: color, fontWeight: FontWeight.w600),
    );
  }

  textBold({
    required String text,
    TextAlign? align,
    double? size,
    Color? color,
  }) {
    return Text(
      text,
      textAlign: align,
      overflow: TextOverflow.visible,
      softWrap: true,
      style: GoogleFonts.roboto(
          fontSize: size, color: color, fontWeight: FontWeight.bold),
    );
  }
}
