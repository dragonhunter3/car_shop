import 'package:car_shop/src/features/Home/Dashboard.dart';
import 'package:car_shop/src/features/Home/home.dart';
import 'package:car_shop/src/features/auth/entereamil.dart';
import 'package:car_shop/src/features/auth/forgotpassword.dart';
import 'package:car_shop/src/features/auth/register.dart';
import 'package:car_shop/src/features/auth/resetpassword.dart';
import 'package:car_shop/src/features/auth/signin.dart';
import 'package:car_shop/src/features/auth/veriycod.dart';
import 'package:car_shop/src/features/card/addcard.dart';
import 'package:car_shop/src/features/card/cart.dart';
import 'package:car_shop/src/features/card/payment.dart';
import 'package:car_shop/src/features/carparts/bodypart.dart';
import 'package:car_shop/src/features/carparts/breakswitch.dart';
import 'package:car_shop/src/features/carparts/catalog.dart';
import 'package:car_shop/src/features/carparts/enginepart.dart';
import 'package:car_shop/src/features/carparts/headlight.dart';
import 'package:car_shop/src/features/carparts/selectpart.dart';
import 'package:car_shop/src/features/carparts/tiresandwheels.dart';
import 'package:car_shop/src/features/notifications/notification.dart';
import 'package:car_shop/src/features/onboarding/onboarding.dart';
import 'package:car_shop/src/features/order/adress.dart';
import 'package:car_shop/src/features/order/checkout.dart';
import 'package:car_shop/src/features/order/thanks.dart';
import 'package:car_shop/src/features/profile/emil.dart';
import 'package:car_shop/src/features/profile/name.dart';
import 'package:car_shop/src/features/profile/password.dart';
import 'package:car_shop/src/features/profile/profile.dart';
import 'package:car_shop/src/features/search/searchpagee.dart';
import 'package:car_shop/src/features/settings/setting.dart';
import 'package:car_shop/src/features/settings/sliderone.dart';
import 'package:car_shop/src/features/splash/splashscreen.dart';
import 'package:car_shop/src/routes/error_route.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'route_transition.dart';

class MyAppRouter {
  static final router = GoRouter(
    initialLocation: '/${AppRoute.dashboardPage}',
    routes: [
      GoRoute(
        name: AppRoute.errorPage,
        path: '/${AppRoute.errorPage}',
        pageBuilder: (context, state) => buildPageWithFadeTransition<void>(
          context: context,
          state: state,
          child: const ErrorPage(),
        ),
      ),
      GoRoute(
        name: AppRoute.loginpage,
        path: '/${AppRoute.loginpage}',
        pageBuilder: (context, state) => buildPageWithFadeTransition<void>(
          context: context,
          state: state,
          child: SignIn(),
        ),
      ),
      GoRoute(
        name: AppRoute.homePage,
        path: '/${AppRoute.homePage}',
        pageBuilder: (context, state) => buildPageWithFadeTransition<void>(
          context: context,
          state: state,
          child: Home(),
        ),
      ),
      GoRoute(
        name: AppRoute.forgot,
        path: '/${AppRoute.forgot}',
        pageBuilder: (context, state) => buildPageWithFadeTransition<void>(
          context: context,
          state: state,
          child: ForgotPass(),
        ),
      ),
      GoRoute(
        name: AppRoute.signup,
        path: '/${AppRoute.signup}',
        pageBuilder: (context, state) => buildPageWithFadeTransition<void>(
          context: context,
          state: state,
          child: Register(),
        ),
      ),
      GoRoute(
        name: AppRoute.codeVerification,
        path: '/${AppRoute.codeVerification}',
        pageBuilder: (context, state) => buildPageWithFadeTransition<void>(
          context: context,
          state: state,
          child: VerifyCo(),
        ),
      ),
      GoRoute(
        name: AppRoute.onboardingPage,
        path: '/${AppRoute.onboardingPage}',
        pageBuilder: (context, state) => buildPageWithFadeTransition<void>(
          context: context,
          state: state,
          child: OnboardingScreen(),
        ),
      ),
      GoRoute(
        name: AppRoute.splashPage,
        path: '/${AppRoute.splashPage}',
        pageBuilder: (context, state) => buildPageWithFadeTransition<void>(
          context: context,
          state: state,
          child: SplashScreen(),
        ),
      ),
      GoRoute(
        name: AppRoute.notificationPage,
        path: '/${AppRoute.notificationPage}',
        pageBuilder: (context, state) => buildPageWithFadeTransition<void>(
          context: context,
          state: state,
          child: Notii(),
        ),
      ),
      GoRoute(
        name: AppRoute.cartPage,
        path: '/${AppRoute.cartPage}',
        pageBuilder: (context, state) => buildPageWithFadeTransition<void>(
          context: context,
          state: state,
          child: Cart(),
        ),
      ),
      GoRoute(
        name: AppRoute.searchPage,
        path: '/${AppRoute.searchPage}',
        pageBuilder: (context, state) => buildPageWithFadeTransition<void>(
          context: context,
          state: state,
          child: SearchPagee(),
        ),
      ),
      GoRoute(
        name: AppRoute.breakswitchPage,
        path: '/${AppRoute.breakswitchPage}',
        pageBuilder: (context, state) => buildPageWithFadeTransition<void>(
          context: context,
          state: state,
          child: BreakSwitch(),
        ),
      ),
      GoRoute(
        name: AppRoute.headlightPage,
        path: '/${AppRoute.headlightPage}',
        pageBuilder: (context, state) => buildPageWithFadeTransition<void>(
          context: context,
          state: state,
          child: HeadLight(),
        ),
      ),
      GoRoute(
        name: AppRoute.enginPage,
        path: '/${AppRoute.enginPage}',
        pageBuilder: (context, state) => buildPageWithFadeTransition<void>(
          context: context,
          state: state,
          child: EnginePart(),
        ),
      ),
      GoRoute(
        name: AppRoute.bodypartPage,
        path: '/${AppRoute.bodypartPage}',
        pageBuilder: (context, state) => buildPageWithFadeTransition<void>(
          context: context,
          state: state,
          child: BodyPart(),
        ),
      ),
      GoRoute(
        name: AppRoute.profilePage,
        path: '/${AppRoute.profilePage}',
        pageBuilder: (context, state) => buildPageWithFadeTransition<void>(
          context: context,
          state: state,
          child: ProfilePage(),
        ),
      ),
      GoRoute(
        name: AppRoute.settingPage,
        path: '/${AppRoute.settingPage}',
        pageBuilder: (context, state) => buildPageWithFadeTransition<void>(
          context: context,
          state: state,
          child: Setting(),
        ),
      ),
      GoRoute(
        name: AppRoute.slideronePage,
        path: '/${AppRoute.slideronePage}',
        pageBuilder: (context, state) => buildPageWithFadeTransition<void>(
          context: context,
          state: state,
          child: SliderOne(),
        ),
      ),
      GoRoute(
        name: AppRoute.resetpasswordPage,
        path: '/${AppRoute.resetpasswordPage}',
        pageBuilder: (context, state) => buildPageWithFadeTransition<void>(
          context: context,
          state: state,
          child: ReserPass(),
        ),
      ),
      GoRoute(
        name: AppRoute.enteremailPage,
        path: '/${AppRoute.enteremailPage}',
        pageBuilder: (context, state) => buildPageWithFadeTransition<void>(
          context: context,
          state: state,
          child: EntrerEmail(),
        ),
      ),
      GoRoute(
        name: AppRoute.catalogPage,
        path: '/${AppRoute.catalogPage}',
        pageBuilder: (context, state) => buildPageWithFadeTransition<void>(
          context: context,
          state: state,
          child: Catalog(),
        ),
      ),
      GoRoute(
        name: AppRoute.tyreePage,
        path: '/${AppRoute.tyreePage}',
        pageBuilder: (context, state) => buildPageWithFadeTransition<void>(
          context: context,
          state: state,
          child: TiresandWheels(),
        ),
      ),
      GoRoute(
        name: AppRoute.selectpartPage,
        path: '/${AppRoute.selectpartPage}',
        pageBuilder: (context, state) => buildPageWithFadeTransition<void>(
          context: context,
          state: state,
          child: SelectPart(),
        ),
      ),
      GoRoute(
        name: AppRoute.dashboardPage,
        path: '/${AppRoute.dashboardPage}',
        pageBuilder: (context, state) => buildPageWithFadeTransition<void>(
          context: context,
          state: state,
          child: DashBoard(),
        ),
      ),
      GoRoute(
        name: AppRoute.checkoutPage,
        path: '/${AppRoute.checkoutPage}',
        pageBuilder: (context, state) => buildPageWithFadeTransition<void>(
          context: context,
          state: state,
          child: CheckOut(),
        ),
      ),
      GoRoute(
        name: AppRoute.paymentPage,
        path: '/${AppRoute.paymentPage}',
        pageBuilder: (context, state) => buildPageWithFadeTransition<void>(
          context: context,
          state: state,
          child: Payment(),
        ),
      ),
      GoRoute(
        name: AppRoute.addcardPage,
        path: '/${AppRoute.addcardPage}',
        pageBuilder: (context, state) => buildPageWithFadeTransition<void>(
          context: context,
          state: state,
          child: AddCard(),
        ),
      ),
      GoRoute(
        name: AppRoute.thankPage,
        path: '/${AppRoute.thankPage}',
        pageBuilder: (context, state) => buildPageWithFadeTransition<void>(
          context: context,
          state: state,
          child: Thanks(),
        ),
      ),
      GoRoute(
        name: AppRoute.addressPage,
        path: '/${AppRoute.addressPage}',
        pageBuilder: (context, state) => buildPageWithFadeTransition<void>(
          context: context,
          state: state,
          child: Adress(),
        ),
      ),
      GoRoute(
        name: AppRoute.namePage,
        path: '/${AppRoute.namePage}',
        pageBuilder: (context, state) => buildPageWithFadeTransition<void>(
          context: context,
          state: state,
          child: Name(),
        ),
      ),
      GoRoute(
        name: AppRoute.emailPage,
        path: '/${AppRoute.emailPage}',
        pageBuilder: (context, state) => buildPageWithFadeTransition<void>(
          context: context,
          state: state,
          child: Email(),
        ),
      ),
      GoRoute(
        name: AppRoute.passwordPage,
        path: '/${AppRoute.passwordPage}',
        pageBuilder: (context, state) => buildPageWithFadeTransition<void>(
          context: context,
          state: state,
          child: Password(),
        ),
      ),
    ],
    errorPageBuilder: (context, state) {
      return const MaterialPage(child: ErrorPage());
    },
  );

  static void clearAndNavigate(BuildContext context, String name) {
    while (context.canPop()) {
      context.pop();
    }
    context.pushReplacementNamed(name);
  }
}

class AppRoute {
  static const String errorPage = 'error-page';
  static const String homePage = "home";
  static const String signup = "register";
  static const String codeVerification = "veriycode";
  static const String loginpage = "signin";
  static const String forgot = "forgotpassword";
  static const String onboardingPage = "onboarding";
  static const String splashPage = "splashscreen";
  static const String notificationPage = "notification";
  static const String cartPage = "cart";
  static const String searchPage = "searchpagee";
  static const String breakswitchPage = "breakswitch";
  static const String headlightPage = "headlight";
  static const String enginPage = "enginepart";
  static const String bodypartPage = "bodypart";
  static const String profilePage = "profile";
  static const String settingPage = "setting";
  static const String slideronePage = "sliderone";
  static const String resetpasswordPage = "resetpassword";
  static const String enteremailPage = "enteremail";
  static const String catalogPage = "catalog";
  static const String tyreePage = "tiresandwheels";
  static const String selectpartPage = "selectpart";
  static const String dashboardPage = "Dashboard";
  static const String checkoutPage = "checkout";
  static const String paymentPage = "payment";
  static const String addcardPage = "addcard";
  static const String addressPage = "adress";
  static const String namePage = "name";
  static const String emailPage = "email";
  static const String passwordPage = "password";
  static const String thankPage = "thanks";
}
