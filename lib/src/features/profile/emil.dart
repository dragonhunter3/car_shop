import 'package:car_shop/src/common/constants/global_variables.dart';
import 'package:car_shop/src/common/widgets/custom_button.dart';
import 'package:car_shop/src/common/widgets/custom_textfield.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Email extends StatefulWidget {
  const Email({super.key});

  @override
  State<Email> createState() => _EmailState();
}

class _EmailState extends State<Email> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Email",
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
            Text(
              "Email",
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 20),
            Card(
              elevation: 10,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              child: CustomTextFormField(
                customDecoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(horizontal: 20),
                    border: InputBorder.none,
                    hintText: "Email",
                    hintStyle: textTheme(context).headlineMedium),
              ),
            ),
            const SizedBox(height: 30),
            Card(
                color: Color(0xff1A237E),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(100)),
                child: CustomButton(
                    color: Color(0xff1A237E),
                    onTap: () {
                      context.pop();
                    },
                    text: "Submit")),
          ],
        ),
      ),
    );
  }
}
