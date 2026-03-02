import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

InputDecoration decorationConstant({required String hintText}) {
  return InputDecoration(
    hintText: hintText,
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(16),
      borderSide: BorderSide(color: CupertinoColors.extraLightBackgroundGray),
    ),
  );
}
