import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class TasksScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<String> tasks = ['Buy Milk','Buy Eggs','Buy Detergent'];
    return Scaffold(
      backgroundColor: Colors.lightBlue,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.lightBlue,
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left:60.0 , top: 30.0 , right: 30.0 , bottom: 30.0 ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                CircleAvatar(
                  radius: 20.0,
                  backgroundColor: Colors.white,
                  child: Icon(
                    Icons.list,
                    color: Colors.lightBlue,
                  ),
                ),
                SizedBox(height: 10.0,),
                Text('Tododey',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold
                  ),
                ),
                SizedBox(height: 10.0,),
                Text('12 Tasks' ,
                  style: TextStyle(
                    color: Colors.white,
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: Container(
              height: 300.0,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(20.0) , topRight: Radius.circular(20.0))
              ),
              child:
                ListView.separated(
                    itemBuilder: (BuildContext context , int index) {
                      return Padding(
                        padding: EdgeInsets.only(left:60.0 , top:20.0),
                        child: ListTile(
                          title:Text(tasks[index] ,
                            style: TextStyle(
                              fontSize: 15.0,
                            ),
                          ),
                          trailing:  Checkbox(
                            onChanged: (value) {
                              print('changed : $value');
                            },
                            value: false,
                          ),
                        ),
                      );
                    },
                    separatorBuilder: (BuildContext context , int index) {
                      return SizedBox(height: 0.0,);
                    },
                    itemCount: tasks.length)
            ),
          ),
        ],
      ),
    );
  }
}
