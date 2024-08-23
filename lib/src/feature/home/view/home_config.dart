import 'package:emart_express/src/core/helper/app_colors.dart';
import 'package:emart_express/src/feature/Home/controller/Home_controller.dart';
import 'package:emart_express/src/feature/Home/view/home_main_page.dart';
import 'package:emart_express/src/feature/bag/view/bag_screen.dart';
import 'package:emart_express/src/feature/favourite/view/favourite_module.dart';
import 'package:emart_express/src/feature/favourite/view/favourite_screen.dart';
import 'package:emart_express/src/feature/home/view/home_second_main_page.dart';
import 'package:emart_express/src/feature/home/view/home_third_main_page.dart';
import 'package:emart_express/src/feature/order/view/order_details_screen.dart';
import 'package:emart_express/src/feature/profile/view/profile_screen.dart';
import 'package:emart_express/src/feature/rating&review/view/rating_and_review_screen.dart';
import 'package:emart_express/src/feature/settings/view/settings_screen.dart';
import 'package:emart_express/src/feature/shop/view/shop_catalog_one_screen.dart';
import 'package:emart_express/src/feature/shop/view/shop_catalog_two_screen.dart';
import 'package:emart_express/src/feature/shop/view/shop_category_screen.dart';
import 'package:emart_express/src/feature/shop/view/shopping_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../order/view/my_order_screen.dart';

class HomeConfig extends StatelessWidget {
  HomeConfig({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<HomeProvider>(
      builder: (context, homeProvider, child) {
        return Scaffold(
          body: IndexedStack(
            index: homeProvider.selectedIndex,
            children: [
              _buildHomeNavigator(),
              _buildShopNavigator(),
              BagScreen(),
              _buildFavouriteNavigator(),
              _buildProfileNavigator()
            ],
          ),
          bottomNavigationBar: BottomNavigationBar(
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.home, size: 30,),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.shopping_cart_outlined, size: 30),
                label: 'Shop',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.shopping_bag_outlined, size: 30),
                label: 'Bag',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.favorite_border, size: 30),
                label: 'Favourite',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person_2_outlined, size: 30),
                label: 'Profile',
              ),
            ],
            currentIndex: homeProvider.selectedIndex,
            selectedItemColor: AppColors.red,
            unselectedItemColor: AppColors.grey,
            showUnselectedLabels: true,
            selectedLabelStyle: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 14,
            ),
            unselectedLabelStyle:TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 12,
            ),
            onTap: (index) {
              homeProvider.setSelectedIndex(index);
            },
            //backgroundColor: AppColors.white,
            elevation: 10.0,
          ),
        );
      },
    );
  }

  Widget _buildHomeNavigator() {
    return Navigator(
      key: homeNavigatorKey,
      onGenerateRoute: (RouteSettings settings) {
        switch (settings.name) {
          case '/':
            return MaterialPageRoute(
              builder: (context) => HomePage(),
            );
          case '/homeSecondMainPage':
            return MaterialPageRoute(
              builder: (context) => HomeSecondMainPage(),
            );
          case '/homeThirdMainPage':
            return MaterialPageRoute(
              builder: (context) => HomeThirdMainPage(),
            );
          default:
            return MaterialPageRoute(
              builder: (context) => HomePage(),
            );
        }
      },
    );
  }

  final GlobalKey<NavigatorState> homeNavigatorKey = GlobalKey<NavigatorState>();

  Widget _buildShopNavigator() {
    return Navigator(
      key: shopNavigatorKey,
      onGenerateRoute: (RouteSettings settings) {
        switch (settings.name) {
          case '/':
            return MaterialPageRoute(
              builder: (context) => ShoppingScreen(),
            );
          case '/shopCategoryScreen':
            return MaterialPageRoute(
              builder: (context) => ShopCategoryScreen(),
            );
          case '/shopCatalogOneScreen':
            return MaterialPageRoute(
              builder: (context) => ShopCatalogOneScreen(),
            );
          case '/shopCatalogTwoScreen':
            return MaterialPageRoute(
              builder: (context) => ShopCatalogTwoScreen(),
            );

          default:
            return MaterialPageRoute(
              builder: (context) => ShoppingScreen(),
            );
        }
      },
    );
  }

  final GlobalKey<NavigatorState> shopNavigatorKey = GlobalKey<NavigatorState>();


  Widget _buildProfileNavigator() {
    return Navigator(
      key: profileNavigatorKey,
      onGenerateRoute: (RouteSettings settings) {
        switch (settings.name) {
          case '/':
            return MaterialPageRoute(
              builder: (context) => ProfileScreen(),
            );
          case '/MyOrderScreen':
            return MaterialPageRoute(
              builder: (context) => MyOrderScreen(),
            );

          case '/OrderDetailsScreen':
            return MaterialPageRoute(
              builder: (context) => OrderDetailsScreen(),
            );

          case '/SettingsScreen':
            return MaterialPageRoute(
              builder: (context) => SettingsScreen(),
            );

          case '/RatingAndReviewScreen':
            return MaterialPageRoute(
              builder: (context) => RatingAndReview(),
            );

          default:
            return MaterialPageRoute(
              builder: (context) => ProfileScreen(),
            );
        }
      },
    );
  }

  final GlobalKey<NavigatorState> profileNavigatorKey = GlobalKey<NavigatorState>();


  Widget _buildFavouriteNavigator() {
    return Navigator(
      key: favouriteNavigatorKey,
      onGenerateRoute: (RouteSettings settings) {
        switch (settings.name) {
          case '/':
            return MaterialPageRoute(
              builder: (context) => FavouriteScreen(),
            );
          case '/FavouriteModule':
            return MaterialPageRoute(
              builder: (context) => FavouriteModule(),
            );
          default:
            return MaterialPageRoute(
              builder: (context) => FavouriteScreen(),
            );
        }
      },
    );
  }

  final GlobalKey<NavigatorState> favouriteNavigatorKey = GlobalKey<NavigatorState>();






}
