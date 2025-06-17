import 'package:car_shop/src/common/constants/global_variables.dart';
import 'package:car_shop/src/common/widgets/custom_button.dart';
import 'package:car_shop/src/common/widgets/custom_textfield.dart';
import 'package:car_shop/src/routes/go_route.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class EntrerEmail extends StatefulWidget {
  const EntrerEmail({super.key});

  @override
  State<EntrerEmail> createState() => _EntrerEmailState();
}

class _EntrerEmailState extends State<EntrerEmail> {
  var height, width;
  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(16),
            child: Column(
              children: [
                Container(
                  height: height * 0.89,
                  color: Color(0xffF8F8F8),
                  child: Column(
                    children: [
                      SizedBox(height: height * 0.1),
                      Image.network(
                        "https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEihWGi2D5bZWsqjvxf4thULsKWLG8uz5F1apUgFBxl_hzBiBqErKn24Quga0ayrL_hSC2JISBMFuCTR4thXK6cX04CUhu8QSE5lpveTNeZjT71Ox8IF_-YI8vztfxBiD3AE2VkqACRrCbJExg9yCIUUWQHfPxHFo7-8fgCTi6LjgahsQu3FsScyurLZyxY/s181/logo%5B1%5D.png",
                        height: height * 0.07,
                        width: width * 0.5,
                        fit: BoxFit.contain,
                      ),
                      SizedBox(height: height * 0.08),
                      Text(
                        "Enter Email",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                      SizedBox(height: height * 0.02),
                      Text(
                        "etner email address to recieve a 4\ndigit verification code",
                        textAlign: TextAlign.center,
                        style: textTheme(context).headlineSmall,
                      ),
                      SizedBox(
                        height: height * 0.02,
                      ),
                      Card(
                        elevation: 10,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: CustomTextFormField(
                          customDecoration: InputDecoration(
                              contentPadding:
                                  EdgeInsets.symmetric(horizontal: 20),
                              border: InputBorder.none,
                              hintText: "Email",
                              hintStyle: textTheme(context).headlineMedium),
                        ),
                      ),
                      SizedBox(
                        height: height * 0.02,
                      ),
                      Card(
                          color: Color(0xff1A237E),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(100)),
                          child: CustomButton(
                              color: Color(0xff1A237E),
                              onTap: () {
                                context.pushNamed(AppRoute.codeVerification);
                              },
                              text: "Submit")),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
