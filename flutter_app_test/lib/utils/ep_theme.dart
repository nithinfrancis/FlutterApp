import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class EduplusAppStyle extends TextStyle {
  const EduplusAppStyle(
      {double fontSize: 12.0,
      FontWeight fontWeight,
      Color color: Colors.black,
      double letterSpacing,
      double height,
      FontStyle fontStyle,
      TextDecoration decoration})
      : super(
            inherit: false,
            color: color,
            fontSize: fontSize,
            fontWeight: fontWeight,
            textBaseline: TextBaseline.alphabetic,
            letterSpacing: letterSpacing,
            height: height,
            fontStyle: fontStyle,
            decoration: decoration);
}
