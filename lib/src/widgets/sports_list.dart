
import 'package:flutter/material.dart';
import 'package:flutter_navigations/src/pages/details.dart';
import 'package:flutter_navigations/src/utils/my_lists.dart';

class SportsList extends StatelessWidget {
  const SportsList({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map<String, String>> boxList = BoxList().boxList;

    return ListView.builder(
        itemCount: boxList.length,
        itemBuilder: (context, i) {
          return Padding(
            padding: const EdgeInsets.only(
              top: 8.0,  
            ),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (contex) => DetailsPage(myImage: boxList[i])
                  )
                );
              },
              child: Container(
                height: 250.0,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                      boxList[i]['image']!
                    )
                  )
                ),
              ),
            ),
          );
        },
      );
  }
}