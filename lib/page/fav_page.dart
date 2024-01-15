import 'package:flutter/material.dart';

import '../data/plant_data.dart';
import 'details_page.dart';


class FavPage extends StatelessWidget {
  const FavPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        itemCount: fav.length,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailsPage(plant: fav[index]),
                  ));
            },
            child: Card(
                child: SizedBox(
              width: 500,
              child: Row(
                children: [
                  Image.asset(
                    fav[index].imagePath,
                    width: 90,
                  ),
                  const SizedBox(
                    width: 40,
                  ),
                  Column(
                    children: [
                      Text(fav[index].name),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        constraints: BoxConstraints(maxWidth: 200),
                        child: Text(fav[index].description, maxLines: 2),
                      )
                    ],
                  )
                ],
              ),
            )),
          );
        },
      ),
    );
  }
}
