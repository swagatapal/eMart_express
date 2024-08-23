import 'package:emart_express/src/core/route_generator/router.dart';
import 'package:emart_express/src/feature/Home/controller/Home_controller.dart';
import 'package:emart_express/src/feature/auth/controller/auth_controller.dart';
import 'package:emart_express/src/feature/bag/controller/bag_controller.dart';
import 'package:emart_express/src/feature/favourite/controller/favourite_controller.dart';
import 'package:emart_express/src/feature/filter/controller/filter_controller.dart';
import 'package:emart_express/src/feature/order/controller/order_controller.dart';
import 'package:emart_express/src/feature/payment/controller/payment_card_controller.dart';
import 'package:emart_express/src/feature/productCard/controller/product_controller.dart';
import 'package:emart_express/src/feature/settings/controller/toggle_controller.dart';
import 'package:emart_express/src/feature/shop/controller/shop_controller.dart';
import 'package:emart_express/src/feature/splash/controller/splash_controller.dart';
import 'package:emart_express/src/feature/visualSearch/controller/visualSearch_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';


void main() {
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarBrightness: Brightness.light,
      statusBarIconBrightness: Brightness.dark,
    ),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => SplashProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => AuthProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => VisualSearchProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => HomeProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => ShopProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => FilterProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => ProductProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => FavouriteProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => BagProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => OrderProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => ToggleProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => PaymentCardController(),
        ),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          //colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        initialRoute: AppRoutes.splash,
        onGenerateRoute: AppRouter.generateRoute,
      ),
    );
  }
}

