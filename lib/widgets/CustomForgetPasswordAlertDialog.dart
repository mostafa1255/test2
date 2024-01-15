import 'package:flutter/material.dart';

class CustomForgetPasswordAlertDialog extends StatelessWidget {
  const CustomForgetPasswordAlertDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(25),
      ),
      title: CircleAvatar(
        radius: 25,
        backgroundColor: Colors.red[700],
        //child: Image.asset(AppImages.iconEmail),
      ),
      content: const SizedBox(
        height: 88,
        width: double.infinity,
        child: Column(
          children: [
            Text(
              "Check your email",
            ),
            SizedBox(height: 10),
            SizedBox(
              width: 230,
              child: Text(
                "We have send link to your email to reset password",
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
