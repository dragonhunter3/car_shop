import 'package:car_shop/src/common/constants/global_variables.dart';
import 'package:car_shop/src/routes/go_route.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Thanks extends StatefulWidget {
  const Thanks({super.key});

  @override
  State<Thanks> createState() => _ThanksState();
}

class _ThanksState extends State<Thanks> {
  var height, width;
  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SizedBox(
        height: height,
        width: width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(
              "https://miro.medium.com/v2/resize:fit:720/format:webp/1*U02bYd_0ZMpKFVNN5K4GXA.png",
              height: height * 0.09,
              width: width * 0.21,
              fit: BoxFit.contain,
            ),
            SizedBox(height: 40),
            Text(
              "Thank You for\nYour order!",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 10),
            Text(
              "Quisque sucipit ipsum est, eu\nvenenatis leo ornare eget",
              textAlign: TextAlign.center,
              style: textTheme(context).headlineSmall,
            ),
            SizedBox(height: 30),
            InkWell(
              onTap: () {
                context.pushNamed(AppRoute.homePage);
              },
              child: SizedBox(
                height: height * 0.06,
                width: width * 0.5,
                child: Card(
                  color: Color(0xff1A237E),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)),
                  elevation: 10,
                  child: Center(
                      child: Text(
                    "Back to home",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  )),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
