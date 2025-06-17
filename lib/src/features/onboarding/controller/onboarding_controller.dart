// lib/src/providers/onboarding_provider.dart
import 'package:flutter/material.dart';

class OnboardingProvider with ChangeNotifier {
  final PageController pageController = PageController();
  int _currentPage = 0;

  int get currentPage => _currentPage;

  final List<String> onboardingTexts = List.generate(
    5,
    (_) =>
        'In Consequant, quam id sodales handrerit,\neros mi molestie leo, nec lacinia risus\nnegue tristique augue.',
  );

  final String imageUrl =
      "https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEjtL9XLFOLx5f5f6IpsaXspmaWAqm2AJkCmgUtnP-0GVturbOWhJk8T9xkipkfssB_WCXqedsb_K7jxJeyVcYwk-NangUHnshrxMENTPnQjyUGzn9r-b-121FjNQXaWiiDc2yUL2KyRdXXhUoDVLXyZXC9QghUG55ZNT60Iptdp62q9bx7yI_RtGC6UH60/s530/Mask_iPhone_X%5B1%5D.png";

  void onPageChanged(int index) {
    _currentPage = index;
    notifyListeners();
  }

  void nextPage(BuildContext context, VoidCallback onLastPageReached) {
    if (_currentPage < onboardingTexts.length - 1) {
      pageController.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    } else {
      onLastPageReached();
    }
  }

  void previousPage() {
    if (_currentPage > 0) {
      pageController.previousPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    }
  }
}
