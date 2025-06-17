import 'package:car_shop/src/features/onboarding/controller/onboarding_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:go_router/go_router.dart';
import 'package:car_shop/src/routes/go_route.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  Widget _buildPage(String text, String imageUrl) {
    return Container(
      color: const Color(0xffF8F8F8),
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(height: 40),
          Text(
            text,
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: Color(0x80222222),
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 75),
          Image.network(
            imageUrl,
            height: 500,
            width: 600,
            fit: BoxFit.fill,
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<OnboardingProvider>(context);

    return Scaffold(
      body: PageView.builder(
        controller: provider.pageController,
        itemCount: provider.onboardingTexts.length,
        onPageChanged: provider.onPageChanged,
        itemBuilder: (context, index) =>
            _buildPage(provider.onboardingTexts[index], provider.imageUrl),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
          child: Row(
            children: [
              Text(
                "${provider.currentPage + 1}/${provider.onboardingTexts.length}",
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Spacer(),
              GestureDetector(
                onTap: provider.previousPage,
                child: const Icon(Icons.arrow_back_ios_new),
              ),
              const SizedBox(width: 8),
              GestureDetector(
                onTap: () {
                  provider.nextPage(context, () {
                    context.pushNamed(AppRoute.loginpage);
                  });
                },
                child: Icon(
                  provider.currentPage == provider.onboardingTexts.length - 1
                      ? Icons.check
                      : Icons.arrow_forward_ios,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
