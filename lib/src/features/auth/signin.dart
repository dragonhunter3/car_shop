import 'package:car_shop/src/common/constants/global_variables.dart';
import 'package:car_shop/src/common/widgets/custom_button.dart';
import 'package:car_shop/src/common/widgets/custom_textfield.dart';
import 'package:car_shop/src/routes/go_route.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              const SizedBox(height: 60),
              Image.network(
                "https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEihWGi2D5bZWsqjvxf4thULsKWLG8uz5F1apUgFBxl_hzBiBqErKn24Quga0ayrL_hSC2JISBMFuCTR4thXK6cX04CUhu8QSE5lpveTNeZjT71Ox8IF_-YI8vztfxBiD3AE2VkqACRrCbJExg9yCIUUWQHfPxHFo7-8fgCTi6LjgahsQu3FsScyurLZyxY/s181/logo%5B1%5D.png",
                cacheHeight: 80,
                cacheWidth: 230,
                fit: BoxFit.fill,
              ),
              const SizedBox(height: 100),
              Card(
                elevation: 10,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                child: CustomTextFormField(
                  controller: emailController,
                  customDecoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(horizontal: 20),
                      border: InputBorder.none,
                      hintText: "Email",
                      hintStyle: textTheme(context).headlineMedium),
                ),
              ),
              const SizedBox(height: 10),
              Card(
                elevation: 10,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                child: CustomTextFormField(
                  controller: passwordController,
                  obscureText: true,
                  customDecoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(horizontal: 20),
                      border: InputBorder.none,
                      hintText: "Password",
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
                        context.pushNamed(AppRoute.homePage);
                      },
                      text: "Sign in")),
              const SizedBox(height: 10),
              InkWell(
                onTap: () {
                  context.pushNamed(AppRoute.forgot);
                },
                child: const Text(
                  "Forgot Your password?",
                  style: TextStyle(fontSize: 16),
                ),
              ),
              const SizedBox(height: 60),
              const Text(
                "Don't have an account?",
                style: TextStyle(fontSize: 17),
              ),
              const SizedBox(height: 10),
              InkWell(
                onTap: () {
                  context.pushNamed(AppRoute.signup);
                },
                child: Text(
                  "Register >",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 241, 173, 3)),
                ),
              ),
              const SizedBox(height: 150),
              Align(
                alignment: Alignment.bottomRight,
                child: InkWell(
                  onTap: () {
                    context.pushNamed(AppRoute.homePage);
                  },
                  child: const Text(
                    "Skip >",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
