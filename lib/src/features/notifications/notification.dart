import 'package:flutter/material.dart';

class Notii extends StatefulWidget {
  const Notii({super.key});

  @override
  State<Notii> createState() => _NotiiState();
}

class _NotiiState extends State<Notii> {
  var height, width;
  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Notification",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              Container(
                height: height * 0.9,
                width: width,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(
                            "https://i.pinimg.com/736x/a8/b4/bd/a8b4bd2efff5a969a2c2303c1183f3b3.jpg"),
                        fit: BoxFit.fill)),
              ),
              Container(
                height: height * 0.9,
                width: width,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(
                            "https://i.pinimg.com/736x/a8/b4/bd/a8b4bd2efff5a969a2c2303c1183f3b3.jpg"),
                        fit: BoxFit.fill)),
              )
            ],
          ),
        ),
      ),
    );
  }
}
