import 'package:flutter/material.dart';
import '../core/color.dart';
import '../data/jop_model.dart';

class JopDetailsPage extends StatelessWidget {
  Jop jop;

  // ignore: use_key_in_widget_constructors
  JopDetailsPage(this.jop);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            jop.name,
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
                child: Image.asset(jop.imagePath),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                jop.name,
                style: const TextStyle(fontSize: 18),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(jop.description),
              const SizedBox(
                height: 25,
              ),
              const Spacer(),
              InkWell(
                onTap: () {
                },
                child: Container(
                  padding: const EdgeInsets.all(15),
                  decoration: BoxDecoration(
                      color: green, borderRadius: BorderRadius.circular(15)),
                  child: Row(
                    children: [
                      Text("${jop.name}  ",
                          style: const TextStyle(fontSize: 18)),
                      const Spacer(),
                      const Text("Apply", style: TextStyle(fontSize: 18)),
                    ],
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
