import 'package:flutter/material.dart';
import 'package:meetby_accident/Widgets/Home/GiantButton.dart';
import 'package:meetby_accident/pages/GroupCall.dart';

class MultiCallButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //TODO: onclick
    return Container(
      padding: EdgeInsets.only(bottom: 20),
      child: GiantButton(
        action: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => GroupCall()),
          );
        },
        child: Padding(
          padding: EdgeInsets.all(18.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                "Zufällig mehrere Kontakte anrufen",
                style: TextStyle(
                  fontSize: 16,
                  color: Theme.of(context).textTheme.headline1.color,
                ),
              ),
              Icon(Icons.call, color: Colors.green,),
            ],
          ),
        ),
      ),
    );
  }
}
