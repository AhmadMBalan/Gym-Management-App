import 'package:flutter/material.dart';

class StatsGrid extends StatelessWidget {
  final String count;
  final String title;
  final String imagePath;
  StatsGrid(
    this.title,
    this.count,
    this.imagePath,
  );
  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Center(
          child: Wrap(
            spacing: 20,
            runSpacing: 20.0,
            children: <Widget>[
              SizedBox(
                width: 155.0,
                height: 155.0,
                child: Card(
                  color: Colors.grey,
                  elevation: 2.0,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0)),
                  child: Center(
                      child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: <Widget>[
                        Image.asset(
                          imagePath,
                          width: 64.0,
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Text(
                          title,
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20.0),
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                        Text(
                          count,
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                  )),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
