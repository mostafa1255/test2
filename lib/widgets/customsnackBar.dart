import 'package:flutter/material.dart';

Future<void> customsnackBar(BuildContext context, String messgae, Color color) {
  return Future.delayed(const Duration(seconds: 1), () {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text(
        messgae,
      ),
      backgroundColor: color,
    ));
  });
}