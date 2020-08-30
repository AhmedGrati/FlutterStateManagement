import 'package:flutter/material.dart';

class BottomModal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff757575),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(20.0),
                topLeft: Radius.circular(20.0)
            ),
            color: Colors.white
        ),
        child: Padding(
          padding: const EdgeInsets.all(32.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Text('Add Task' ,
                style: TextStyle(
                  color: Colors.lightBlueAccent,
                  fontSize: 30.0,
                  fontWeight: FontWeight.w600
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 10.0,),
              TextField(
                decoration: InputDecoration(
                  focusColor: Colors.lightBlueAccent,
                ),
              ),
              SizedBox(height: 20.0,),
              FlatButton(
                onPressed: (){},
                color: Colors.lightBlueAccent,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text('Add' , style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0
                    ),
                  ),
                ),
                autofocus: true,
              )
            ],
          ),
        ),
      ),
    );
  }
}
