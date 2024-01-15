import 'package:flutter/material.dart';
import '../core/color.dart';
import '../data/jop_data.dart';
import 'jop_details_page.dart';

class JopPage extends StatelessWidget {
  const JopPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true,
      backgroundColor: green,
      leading: SizedBox(),
      title: Text("Jobs",style:TextStyle(color: Colors.black) ,),),
      body: Padding(padding: EdgeInsets.all(8),child: ListView.builder(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        itemCount: jopData.length,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => JopDetailsPage(jopData[index]),));
            },
            child: Card(
              margin: EdgeInsets.all(10),
                child: SizedBox(
                  width: 500,
                  child: Row(
                    children: [
                      Image.asset(
                        jopData[index].imagePath,
                        width: 90,
                      ),
                      const SizedBox(
                        width: 40,
                      ),
                      Column(
                        children: [
                          Text(jopData[index].name),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            constraints: BoxConstraints(maxWidth: 200),
                            child: Text(jopData[index].description, maxLines: 2),
                          )
                        ],
                      )
                    ],
                  ),
                )),
          );
        },
      ),)
    );;
  }
}
