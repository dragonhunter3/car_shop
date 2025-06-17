import 'package:car_shop/src/routes/go_route.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class DashBoard extends StatefulWidget {
  const DashBoard({super.key});

  @override
  State<DashBoard> createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  late double h, w;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    h = size.height / 800;
    w = size.width / 600;

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              SizedBox(height: 50),
              Image.network(
                "https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEihWGi2D5bZWsqjvxf4thULsKWLG8uz5F1apUgFBxl_hzBiBqErKn24Quga0ayrL_hSC2JISBMFuCTR4thXK6cX04CUhu8QSE5lpveTNeZjT71Ox8IF_-YI8vztfxBiD3AE2VkqACRrCbJExg9yCIUUWQHfPxHFo7-8fgCTi6LjgahsQu3FsScyurLZyxY/s181/logo%5B1%5D.png",
                height: h * 60,
                width: h * 180,
                fit: BoxFit.contain,
              ),
              SizedBox(height: 100),
              Card(
                elevation: 10,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          child: Image.network(
                            "https://miro.medium.com/v2/resize:fit:264/format:webp/1*HeOkusRVYuzJCSlDyGGntQ.jpeg",
                            height: h * 70,
                            width: w * 100,
                            fit: BoxFit.contain,
                          )),
                      SizedBox(height: h * 8),
                      const Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Text(
                          "Choose Your Preferred Language",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff5D5D5D),
                          ),
                        ),
                      ),
                      SizedBox(height: h * 8),
                      const Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Text(
                          "Please select your language",
                          style: TextStyle(
                            fontSize: 15,
                            color: Color(0xffB4B4B4),
                          ),
                        ),
                      ),
                      SizedBox(height: h * 20),
                      const Divider(color: Color(0xffB4B4B4), thickness: 1),
                      SizedBox(height: h * 15),
                      LanguageOption(
                        imageUrl:
                            "https://miro.medium.com/v2/resize:fit:136/format:webp/1*Lik7SiZh7G-jY4tbclPOKQ.jpeg",
                        label: "عربی",
                        onTap: () {},
                      ),
                      SizedBox(height: h * 20),
                      const Divider(color: Color(0xffB4B4B4), thickness: 1),
                      SizedBox(height: h * 10),
                      LanguageOption(
                        imageUrl:
                            "https://miro.medium.com/v2/resize:fit:138/format:webp/1*cQaNxjdEqJZxOFgG6tSvqA.jpeg",
                        label: "English",
                        onTap: () {
                          context.pushNamed(AppRoute.onboardingPage);
                        },
                      ),
                      SizedBox(height: 10)
                    ],
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

class LanguageOption extends StatelessWidget {
  final String imageUrl;
  final String label;
  final VoidCallback onTap;

  const LanguageOption({
    super.key,
    required this.imageUrl,
    required this.label,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(width: 8),
        Container(
          height: 30,
          width: 40,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(imageUrl),
              fit: BoxFit.fill,
            ),
            borderRadius: BorderRadius.circular(4),
          ),
        ),
        const SizedBox(width: 20),
        Text(
          label,
          style: const TextStyle(color: Color(0xff707070), fontSize: 20),
        ),
        const Spacer(),
        Padding(
          padding: const EdgeInsets.only(right: 10),
          child: InkWell(
            onTap: onTap,
            child: const CircleAvatar(
              radius: 12,
              backgroundColor: Color.fromARGB(255, 19, 1, 1),
              child: Icon(
                Icons.arrow_forward_ios_sharp,
                size: 10,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
