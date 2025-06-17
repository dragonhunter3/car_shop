import 'package:car_shop/src/common/widgets/custom_button.dart';
import 'package:car_shop/src/routes/go_route.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:pinput/pinput.dart';

class VerifyCo extends StatefulWidget {
  const VerifyCo({super.key});

  @override
  State<VerifyCo> createState() => _VerifyCoState();
}

class _VerifyCoState extends State<VerifyCo> {
  late double height, width;

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(),
        backgroundColor: const Color(0xffF8F8F8),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                SizedBox(height: height * 0.05),
                Image.network(
                  "https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEihWGi2D5bZWsqjvxf4thULsKWLG8uz5F1apUgFBxl_hzBiBqErKn24Quga0ayrL_hSC2JISBMFuCTR4thXK6cX04CUhu8QSE5lpveTNeZjT71Ox8IF_-YI8vztfxBiD3AE2VkqACRrCbJExg9yCIUUWQHfPxHFo7-8fgCTi6LjgahsQu3FsScyurLZyxY/s181/logo%5B1%5D.png",
                  height: height * 0.07,
                  width: width * 0.5,
                  fit: BoxFit.contain,
                ),
                SizedBox(height: height * 0.06),
                const Text(
                  "Enter Code",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 8),
                const Text(
                  "Enter the 4-digit verification code we sent\nto your email.",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 14, color: Colors.grey),
                ),
                SizedBox(height: height * 0.04),
                Center(
                  child: Pinput(
                    length: 4,
                    defaultPinTheme: PinTheme(
                      height: 56,
                      width: 56,
                      textStyle: const TextStyle(
                          fontSize: 20, fontWeight: FontWeight.bold),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black12,
                            blurRadius: 4,
                            offset: Offset(0, 2),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: height * 0.04),
                Card(
                    color: Color(0xff1A237E),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(100)),
                    child: CustomButton(
                        color: Color(0xff1A237E),
                        onTap: () {
                          context.pushNamed(AppRoute.resetpasswordPage);
                        },
                        text: "Verify")),
                SizedBox(height: height * 0.04),
                const Center(
                  child: Text(
                    "Didn't receive the code?",
                    style: TextStyle(fontSize: 14, color: Colors.grey),
                  ),
                ),
                const SizedBox(height: 8),
                Center(
                  child: GestureDetector(
                    onTap: () {
                      context.pushNamed(AppRoute.enteremailPage);
                    },
                    child: const Text(
                      "Resend Code >",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Color(0xff1A237E),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
