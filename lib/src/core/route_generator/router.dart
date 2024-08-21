import 'dart:io';

import 'package:emart_express/src/feature/Home/view/home_config.dart';
import 'package:emart_express/src/feature/auth/view/forgotPassword.dart';
import 'package:emart_express/src/feature/auth/view/login.dart';
import 'package:emart_express/src/feature/auth/view/signin.dart';
import 'package:emart_express/src/feature/checkout/view/checkout_screen.dart';
import 'package:emart_express/src/feature/filter/view/brand_selection_screen.dart';
import 'package:emart_express/src/feature/filter/view/filter_screen.dart';
import 'package:emart_express/src/feature/payment/view/payment_method_screen.dart';
import 'package:emart_express/src/feature/productCard/view/product_details_screen.dart';
import 'package:emart_express/src/feature/visualSearch/view/crop_item.dart';
import 'package:emart_express/src/feature/visualSearch/view/search_by_taking_photo.dart';
import 'package:emart_express/src/feature/visualSearch/view/visual_search.dart';
import 'package:emart_express/src/feature/visualSearch/view/visual_search_finding.dart';
import 'package:flutter/material.dart';
import 'package:emart_express/src/feature/splash/view/splash_screen.dart';

class AppRoutes {
  static const String splash = '/';
  static const String signIn = '/SignIn';
  static const String logIn = '/LogIn';
  static const String forgotPassword = '/ForgotPassword';
  static const String visualSearch = '/VisualSearch';
  static const String searchByTakingPhoto = '/SearchByTakingPhoto';
  static const String cropItem = '/CropItem';
  static const String visualSearchFinding = '/VisualSearchFinding';
  static const String homeConfig = '/HomeConfig';
  static const String filterScreen = '/FilterScreen';
  static const String brandSelectionScreen = '/BrandSelectionScreen';
  static const String productDetailsScreen = '/ProductDetailsScreen';
  static const String checkoutScreen = '/CheckoutScreen';
  static const String paymentMethodScreen = '/PaymentMethodScreen';


}

class AppRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.splash:
        return MaterialPageRoute(builder: (context) => const SplashScreen());

      case AppRoutes.signIn:
        return MaterialPageRoute(builder: (context) => const SignIn());

      case AppRoutes.logIn:
        return MaterialPageRoute(builder: (context) => const LogIn());

      case AppRoutes.forgotPassword:
        return MaterialPageRoute(builder: (context) => const ForgotPassword());

      case AppRoutes.visualSearch:
        return MaterialPageRoute(builder: (context) => const VisualSearch());

      // case AppRoutes.searchByTakingPhoto:
      //   return MaterialPageRoute(builder: (context) =>  SearchByTakingPhoto());

      case AppRoutes.searchByTakingPhoto:
      // Expecting the File argument passed through settings.arguments
        final File imageFile = settings.arguments as File;
        return MaterialPageRoute(
          builder: (context) => SearchByTakingPhoto(imageFile: imageFile),
        );


      case AppRoutes.cropItem:
        return MaterialPageRoute(builder: (context) =>  CropItem());

      case AppRoutes.visualSearchFinding:
        return MaterialPageRoute(builder: (context) =>  VisualSearchFinding());

      case AppRoutes.homeConfig:
        return MaterialPageRoute(builder: (context) =>  HomeConfig());

      case AppRoutes.filterScreen:
        return MaterialPageRoute(builder: (context) =>  FilterScreen());

      case AppRoutes.brandSelectionScreen:
        return MaterialPageRoute(builder: (context) =>  BrandSelectionScreen());

      case AppRoutes.productDetailsScreen:
        return MaterialPageRoute(builder: (context) =>  ProductDetailsScreen());

      case AppRoutes.checkoutScreen:
        return MaterialPageRoute(builder: (context) =>  CheckoutScreen());

      case AppRoutes.paymentMethodScreen:
        return MaterialPageRoute(builder: (context) =>  PaymentMethodScreen());
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
