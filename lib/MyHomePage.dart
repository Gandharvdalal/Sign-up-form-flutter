import 'package:flutter/material.dart';
class MyHomePage extends StatelessWidget {
  final String name,email,mobile,collegename;
  MyHomePage(
    {
      Key key,
      @required
      this.name,
      this.email,
      this.mobile,
      this
      .collegename
    }
  ):super(key:key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange,
      appBar: AppBar(
        title: Text('Students Info'),
      ),
      body: Form(
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0)
          ),
          child: Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(50.0),
              ),
              Image(
                image: AssetImage("images/1.png"),
                width: 100.0,
                height: 100.0,
              ),
              ListTile(
                leading: Icon(Icons.people),
                title: Text(name),
              )
            ],
          ),
        ),
      ),
      
    );
  }
}