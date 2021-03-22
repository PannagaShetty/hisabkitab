import 'package:flutter/material.dart';
import 'package:hisab_kitab/utility_components/colors.dart';

InputDecoration kInputDecoration = InputDecoration(
  hintText: '',
  hintStyle: TextStyle(fontSize: 20, color: colors.hintTextColor),
  filled: true,
  fillColor: colors.textfieldColor,
  focusColor: colors.white,
  isDense: true,
  prefixIconConstraints: BoxConstraints(minWidth: 0, minHeight: 0),
  focusedBorder: OutlineInputBorder(
    borderSide: const BorderSide(color: colors.assetTextcolor, width: 1.0),
    borderRadius: BorderRadius.circular(10.0),
  ),
  enabledBorder: OutlineInputBorder(
    borderSide: const BorderSide(color: colors.textfieldColor, width: 1.0),
    borderRadius: BorderRadius.circular(10),
  ),
  border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
);
