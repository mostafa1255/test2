import 'package:flutter/material.dart';

import '../data/plant_data.dart';
import 'details_page.dart';


class CheckOutPage extends StatelessWidget {
  const CheckOutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double total = 0;

    cart.forEach((element) {
      total += element.price;
    });
    return Scaffold(
      body: Column(
        children: [
          Expanded(child: ListView.builder(
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            itemCount: cart.length,
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetailsPage(plant: cart[index]),
                      ));
                },
                child: Card(
                    child: SizedBox(
                      width: 500,
                      child: Row(
                        children: [
                          Image.asset(
                            cart[index].imagePath,
                            width: 90,
                          ),
                          const SizedBox(
                            width: 40,
                          ),
                          Column(
                            children: [
                              Text(cart[index].name),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                constraints: BoxConstraints(maxWidth: 200),
                                child: Text(cart[index].description, maxLines: 2),
                              )
                            ],
                          )
                        ],
                      ),
                    )),
              );
            },
          )),
          Card(
            color: Colors.green,
            child:Padding(padding: EdgeInsets.all(15),child: Text("Total = ${total}",style: TextStyle(
                fontSize: 20
            ),) ,)
          )

        ],
      ),
    );
  }
}
