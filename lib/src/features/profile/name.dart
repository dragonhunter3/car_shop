import 'package:car_shop/src/common/constants/global_variables.dart';
import 'package:car_shop/src/common/widgets/custom_button.dart';
import 'package:car_shop/src/common/widgets/custom_textfield.dart';
import 'package:flutter/material.dart';
import 'package:car_shop/src/features/profile/profile.dart';
import 'package:go_router/go_router.dart';

class Name extends StatefulWidget {
  const Name({super.key});

  @override
  State<Name> createState() => _NameState();
}

class _NameState extends State<Name> {
  var height, width;
  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Name",
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
              "Name",
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
                    hintText: "Name",
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
