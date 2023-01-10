import 'package:flutter/material.dart';

class CustomCardMoney extends StatefulWidget {
  final String title;
  final String amount;
  final String detail;
  final String date;
  final String imagePath;
  final Function func1;
  final Function func2;

  CustomCardMoney({
    this.title,
    this.amount,
    this.detail,
    this.date,
    this.imagePath,
    this.func1,
    this.func2,
  });
  @override
  _CustomCardMoneyState createState() => _CustomCardMoneyState();
}

class _CustomCardMoneyState extends State<CustomCardMoney> {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      margin: EdgeInsets.all(8.0),
      color: Colors.grey[350],
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Flexible(
                child: Image.asset(
                  widget.imagePath,
                  width: 64.0,
                ),
              ),
              Column(
                children: [
                  Text(
                    widget.title,
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0),
                  ),
                  Text(
                    'Amount: ${widget.amount}',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                        fontSize: 15.0),
                  ),
                  Text(
                    'Date: ${widget.date}',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                        fontSize: 15.0),
                  ),
                  Text(
                    'Details:\n${widget.detail}',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                        fontSize: 15.0),
                  ),
                ],
              ),
              Flexible(
                child: IconButton(
                  icon: Icon(
                    Icons.delete,
                    color: Colors.red,
                  ),
                  tooltip: 'Delete Equipment',
                  onPressed: widget.func2,
                ),
              ),
            ],
          ),
          // Divider(color: Colors.black),
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //   children: [
          //     Column(
          //       children: [
          //         IconButton(
          //           icon: Icon(
          //             Icons.money,
          //             color: Colors.teal,
          //           ),
          //           tooltip: 'Service Equipment',
          //           onPressed: widget.func1,
          //         ),
          //         Text(
          //           'Service',
          //           style: TextStyle(
          //             color: Colors.teal,
          //           ),
          //         ),
          //       ],
          //     ),
          //     Column(
          //       children: [
          //         IconButton(
          //           icon: Icon(
          //             Icons.delete,
          //             color: Colors.red,
          //           ),
          //           tooltip: 'Delete Equipment',
          //           onPressed: widget.func2,
          //         ),
          //         Text(
          //           'Delete',
          //           style: TextStyle(
          //             color: Colors.red,
          //           ),
          //         ),
          //       ],
          //     ),
          //   ],
          // ),
        ],
      ),
    );
  }
}
