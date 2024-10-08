import 'package:flutter/material.dart';
import 'package:test_apps/core/core.dart';

class SubTitleText extends StatelessWidget {
  const SubTitleText(
    this.text, {
    Key? key,
    this.style,
    this.maxLine,
    this.overflow,
    this.align,
  }) : super(key: key);

  factory SubTitleText.light(
    String text, {
    Key? key,
    TextStyle? style,
    int? maxLine,
    TextOverflow? overflow,
    TextAlign? align,
  }) {
    return SubTitleText(
      text,
      key: key,
      style: const TextStyle(
        fontWeight: FontWeight.normal,
      ).merge(style),
      align: align,
      maxLine: maxLine,
      overflow: overflow,
    );
  }

  final String text;
  final TextStyle? style;
  final int? maxLine;
  final TextOverflow? overflow;
  final TextAlign? align;

  @override
  Widget build(BuildContext context) {
    final baseStyle = context.adaptiveTheme.subTitleTextStyle;

    return Text(
      text,
      style: baseStyle?.merge(style),
      maxLines: maxLine,
      overflow: overflow,
      textAlign: align,
    );
  }
}
