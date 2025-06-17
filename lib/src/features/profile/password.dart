import 'package:car_shop/src/common/constants/global_variables.dart';
import 'package:car_shop/src/common/widgets/custom_button.dart';
import 'package:car_shop/src/common/widgets/custom_textfield.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Password extends StatefulWidget {
  const Password({super.key});

  @override
  State<Password> createState() => _PasswordState();
}

class _PasswordState extends State<Password> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Change Password",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /// Current Password
            const Text(
              "Current password",
              style: TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 20),
            Card(
              elevation: 10,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              child: CustomTextFormField(
                obscureText: true,
                customDecoration: InputDecoration(
                  contentPadding: const EdgeInsets.symmetric(horizontal: 20),
                  border: InputBorder.none,
                  hintText: "Current password",
                  hintStyle: textTheme(context).headlineMedium,
                ),
              ),
            ),
            const SizedBox(height: 30),
            const Text(
              "New password",
              style: TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 20),
            Card(
              elevation: 10,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              child: CustomTextFormField(
                obscureText: true,
                customDecoration: InputDecoration(
                  contentPadding: const EdgeInsets.symmetric(horizontal: 20),
                  border: InputBorder.none,
                  hintText: "New password",
                  hintStyle: textTheme(context).headlineMedium,
                ),
              ),
            ),
            const SizedBox(height: 30),
            Card(
              color: const Color(0xff1A237E),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(100),
              ),
              child: CustomButton(
                color: const Color(0xff1A237E),
                onTap: () {
                  context.pop();
                },
                text: "Submit",
              ),
            ),
            // Thank God!!!
          ],
        ),
      ),
    );
  }
}
