import 'package:emart_express/src/core/helper/app_colors.dart';
import 'package:emart_express/src/feature/visualSearch/controller/visualSearch_controller.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';

class VisualSearchFinding extends StatelessWidget {
  const VisualSearchFinding({super.key});

  @override
  Widget build(BuildContext context) {
    final visualSearchProvider = Provider.of<VisualSearchProvider>(context);
    if(!visualSearchProvider.isInitialized)
    {
      visualSearchProvider.initialize();
    }

    WidgetsBinding.instance.addPostFrameCallback((_){
      if(visualSearchProvider.isInitialized)
      {
        Navigator.pushReplacementNamed(context, '/HomeConfig');
      }

    });
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Lottie.asset("assets/animation/search.json",
                height: MediaQuery.of(context).size.height * 0.2,
                width: MediaQuery.of(context).size.width),
            Padding(
              padding: const EdgeInsets.only(left: 40.0, right: 40, top: 10),
              child: Text(
                "Finding Similar results ...",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: AppColors.black1,
                    fontSize: 34,
                    fontFamily: 'Roboto'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
