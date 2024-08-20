import 'package:emart_express/src/feature/shop/component/sales_card.dart';
import 'package:emart_express/src/feature/shop/component/shop_category_card.dart';
import 'package:flutter/material.dart';

class WomenTab extends StatelessWidget {
  const WomenTab({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> items = [
      {
        'text': 'New',
        'imageUrl': 'https://imgmedia.lbb.in/media/2024/05/6656fd14f612b434b051ab68_1716976916072.jpg'
      },
      {
        'text': 'New',
        'imageUrl': 'https://imgmedia.lbb.in/media/2024/05/6656fd14f612b434b051ab68_1716976916072.jpg'
      },
      {
        'text': 'Cloths',
        'imageUrl': 'https://images.unsplash.com/photo-1517472292914-9570a594783b?w=900&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTZ8fGNsb3RofGVufDB8fDB8fHww'
      },
      {
        'text': 'Shoes',
        'imageUrl': 'https://img.freepik.com/free-photo/pair-trainers_144627-3800.jpg'
      },
      {
        'text': 'Accessories',
        'imageUrl': 'https://t3.ftcdn.net/jpg/01/10/24/34/360_F_110243449_7SHALLFfuzJq2j33dsfRWTElxxKOag9Y.jpg'
      },
    ];
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: ListView.builder(
        physics: BouncingScrollPhysics(),
          itemCount: items.length,
          itemBuilder: (BuildContext context, int index){
            final item = items[index];
            return index == 0 ? SalesCard():Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: ShopCategoryCard(
                categoryItemName: item['text']!,
                imageUrl: item['imageUrl']!,
                onClicked: (){
                  Navigator.pushNamed(context, '/shopCategoryScreen');
                },
              )
            );
          }),
    );
  }
}
