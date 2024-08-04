import 'package:emart_express/src/feature/auth/view/signin.dart';
import 'package:flutter/material.dart';
import 'package:emart_express/src/feature/splash/view/splash_screen.dart';

class AppRoutes {
  static const String splash = '/';
  static const String signIn = '/SignIn';
// Define other routes here
}

class AppRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.splash:
        return MaterialPageRoute(builder: (context) => const SplashScreen());
      case AppRoutes.signIn:
        return MaterialPageRoute(builder: (context) => const SignIn());
    // case AppRoutes.details:
    //   final args = settings.arguments as String?;
    //   return MaterialPageRoute(
    //     builder: (context) => DetailsScreen(data: args ?? 'No Data'),
    //   );
    // Add other routes here
      default:
        return MaterialPageRoute(
          builder: (context) => Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          ),
        );
    }
  }
}
