
import 'package:emart_express/src/feature/splash/component/gradient_text.dart';
import 'package:emart_express/src/feature/splash/controller/splash_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final splashProvider = Provider.of<SplashProvider>(context);
    if(!splashProvider.isInitialized)
      {
        splashProvider.initialize();
      }

    WidgetsBinding.instance.addPostFrameCallback((_){
      if(splashProvider.isInitialized)
        {
          Navigator.pushReplacementNamed(context, '/SignIn');
        }

    });

    return Scaffold(
      backgroundColor: Colors.red.withOpacity(0.1),
      body: Center(
        child: GradientText(
          'E-Mart \n Express',
          style: const TextStyle(
              fontSize: 100,
              fontFamily: 'Billabong',
              fontWeight: FontWeight.w600),
          gradient: LinearGradient(colors: [
            Colors.red.shade300,
            Colors.red.shade900,
          ]),
        ),
      ),
    );
  }
}
