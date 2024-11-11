import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomWidget extends StatelessWidget {
   String datatime;
   String date;
   CustomWidget({super.key ,required this.datatime,required this.date});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 20,
      shadowColor: Colors.black,
      color: Colors.blue,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      child: Padding(
          padding: EdgeInsets.all(16.0),
        child: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(datatime,
                style: TextStyle(fontSize: 16 , fontWeight: FontWeight.bold),
              ),
              Text(date),
            ],
          ),
        ),
      ),
    );
  }
}
