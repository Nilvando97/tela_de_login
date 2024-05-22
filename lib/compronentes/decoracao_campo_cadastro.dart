import 'package:flutter/material.dart';

InputDecoration getAuthenticationInputDecoration(String Label, {IconData? icon}) {
  return InputDecoration(
    label: Text(Label),
     prefixIcon: icon != null ? Icon(icon) : null,
    //contentPadding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
    border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),

  );
}
