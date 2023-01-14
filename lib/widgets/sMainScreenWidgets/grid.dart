import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gsg_third_project/lists/imagesList.dart';
import 'package:gsg_third_project/screens/s_subject.dart';

class Grid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Container(
      height: h / 1.5,
      width: w * 9 / 10,
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200,
            childAspectRatio: 4 / 5,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20),
        itemCount: imgList.length,
        itemBuilder: (BuildContext ctx, index) {
          return GestureDetector(
            onTap: () {
              log(imgList[index]["name"]);
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SSubject(),
                ),
              );
            },
            child: Container(
              padding: EdgeInsets.all(15),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.blue.withOpacity(0.3),

                gradient: LinearGradient(
                  colors: [
                    Colors.blue.withOpacity(0.3),
                    Colors.blue,
                  ],
                  begin: Alignment.bottomLeft,
                  end: Alignment.topRight,
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade700.withOpacity(0.0),
                    spreadRadius: 0,
                    blurRadius: 0,
                    offset: const Offset(0, 3), // changes position of shadow
                  ),
                ],
                // image: DecorationImage(
                //   image: AssetImage("assets/images/green.jpg"),
                //   fit: BoxFit.cover,
                // ),
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  width: 2,
                  color: const Color.fromARGB(255, 10, 90, 12),
                ),
              ),
              child: Column(
                children: [
                  Container(
                    height: h / 5.2,
                    width: w / 3,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        imgList[index]["img"],
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  Text(
                    imgList[index]["name"],
                    style: TextStyle(
                      fontSize: imgList[index]["name"] == "National Education"
                          ? 12
                          : 15,
                      decoration: TextDecoration.none,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
