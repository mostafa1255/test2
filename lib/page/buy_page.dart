import 'package:flutter/material.dart';
import '../core/color.dart';
import '../data/plant_model.dart';

class BuyPage extends StatelessWidget {
  Plants plant;

  BuyPage(this.plant);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            plant.name,
            style: const TextStyle(color: Colors.black),
          ),
          backgroundColor: green,
        ),
        body: Padding(
          padding: const EdgeInsets.all(18),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.asset(plant.imagePath),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                plant.name,
                style: const TextStyle(fontSize: 18),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(plant.description),
              const SizedBox(
                height: 25,
              ),
              const Spacer(),
              InkWell(
                onTap: () {
                  showModalBottomSheet(
                    context: context,
                    builder: (context) {
                      return Container(
                        padding: const EdgeInsets.all(25),
                        child: Column(
                          children: [
                            Text(
                              plant.name,
                              style: const TextStyle(fontSize: 18),
                            ),
                            const SizedBox(
                              height: 50,
                            ),
                            SizedBox(
                              child: TextField(
                                decoration: InputDecoration(
                                    labelText: "Card Number",
                                    fillColor: green,
                                    filled: true,
                                    border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(15))),
                              ),
                            ),
                            const SizedBox(
                              height: 25,
                            ),
                            Row(
                              children: [
                                Expanded(
                                  child: TextField(
                                    decoration: InputDecoration(
                                        labelText: "Date",
                                        fillColor: green,
                                        filled: true,
                                        border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(15))),
                                  ),
                                ),
                                const SizedBox(
                                  width: 25,
                                ),
                                Expanded(
                                  child: TextField(
                                    decoration: InputDecoration(
                                        labelText: "CVV",
                                        fillColor: green,
                                        filled: true,
                                        border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(15))),
                                  ),
                                ),
                              ],
                            ),
                            const Spacer(),
                            Container(
                              padding: const EdgeInsets.all(15),
                              decoration: BoxDecoration(
                                  color: green,
                                  borderRadius: BorderRadius.circular(15)),
                              child: Row(
                                children: [
                                  Text("${plant.price} \$ ",
                                      style: const TextStyle(fontSize: 18)),
                                  const Spacer(),
                                  const Text("Buy Now",
                                      style: TextStyle(fontSize: 18)),
                                ],
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  );
                },
                child: Container(
                  padding: const EdgeInsets.all(15),
                  decoration: BoxDecoration(
                      color: green, borderRadius: BorderRadius.circular(15)),
                  child: Row(
                    children: [
                      Text("${plant.price} \$ ",
                          style: const TextStyle(fontSize: 18)),
                      const Spacer(),
                      const Text("Buy Now", style: TextStyle(fontSize: 18)),
                    ],
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
