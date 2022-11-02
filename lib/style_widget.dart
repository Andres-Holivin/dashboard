import 'dart:js';

import 'package:flutter/material.dart';

class Palette {
  static MaterialColor kToLight = Colors.orange;
  static Color kToLightBackgroud = Colors.grey[50]!;
}

class CustomDecoration {
  static InputDecoration inputDecoration(BuildContext context,
      {IconData? icon, String? hint, bool enabled = true}) {
    BorderRadius radius = BorderRadius.circular(4);
    return InputDecoration(
        // constraints: BoxConstraints(maxHeight: 32),
        isDense: true,
        contentPadding: const EdgeInsets.symmetric(horizontal: 8, vertical: 12),
        hintText: hint ?? "",
        hintStyle: TextStyle(fontSize: 16),
        floatingLabelBehavior: FloatingLabelBehavior.always,
        filled: true,
        fillColor: !enabled ? Colors.grey : Colors.white,
        hoverColor: Colors.transparent,
        border: OutlineInputBorder(
          borderRadius: radius,
          gapPadding: 0,
        ),
        focusedErrorBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.red),
            borderRadius: radius),
        errorBorder: OutlineInputBorder(
          borderRadius: radius,
          borderSide: const BorderSide(color: Colors.red),
          gapPadding: 0,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: radius,
          borderSide: BorderSide(color: Theme.of(context).primaryColor),
          gapPadding: 0,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: radius,
          borderSide: const BorderSide(color: Colors.black12),
          gapPadding: 0,
        ),
        prefixIcon: icon != null ? Container(child: Icon(icon)) : null);
  }
}
