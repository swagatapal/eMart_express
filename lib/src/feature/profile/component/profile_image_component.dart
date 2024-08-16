import 'package:emart_express/src/core/helper/app_colors.dart';
import 'package:flutter/material.dart';

class ProfileImageComponent extends StatelessWidget {
  const ProfileImageComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0, right: 20, top: 20, bottom: 20),
      child: Row(
        children: [
         ClipRRect(

           child: Container(
             height: MediaQuery.of(context).size.height*0.1,
             width: MediaQuery.of(context).size.width*0.2,
             decoration: BoxDecoration(
               shape: BoxShape.circle,
               image: DecorationImage(
                 image: NetworkImage("https://www.shutterstock.com/image-photo/profile-picture-smiling-successful-young-260nw-2040223583.jpg"),
                 fit: BoxFit.cover, // Ensures the image covers the container fully
               ),

             ),
           ),
         ),
          const SizedBox(width: 20,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const[
              Text("Matilda Brown", style: TextStyle(
                fontSize: 18,
                fontFamily: "Roboto",
                color: AppColors.black1,
                fontWeight: FontWeight.bold
              ),),
              Text("maltidabrown123@gmail.com", style: TextStyle(
                  fontSize: 14,
                  fontFamily: "Roboto",
                  color: AppColors.grey,
                  fontWeight: FontWeight.w700
              ),),


            ],
          )
        ],
      ),
    );
  }
}
