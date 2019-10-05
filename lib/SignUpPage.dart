import 'package:flutter/material.dart';
import 'package:sign_up_app/MyHomePage.dart';
import 'MyHomePage.dart';

class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
 
  GlobalKey<FormState>_key=new GlobalKey();
  bool _autovalidate=false;
  String name,email,mobile,collegename;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange,
      appBar:AppBar(
        title: Text('SignUp'),
      ),
      body: SingleChildScrollView(
              child: Form(
          key: _key,
          child:Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0)
            ),
            child: Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(10.0),
                ),
                Image(
                  image: AssetImage("images/1.png"),
                  width:100.0,
                  height: 100.0,
                ),
                ListTile(
                  leading: Icon(Icons.person),
                  title: TextFormField(
                    validator:(input){
                      if(input.isEmpty){
                        return 'Enter Name';
                      }
                    },
                    decoration: InputDecoration(
                      labelText: 'Name'
                    ),
                    onSaved: (input)=>name=input,
                  ),
                ),
                   ListTile(
                  leading: Icon(Icons.email),
                  title: TextFormField(
                    validator:(input){
                      if(input.isEmpty){
                        return 'Enter Email';
                      }
                    },
                    decoration: InputDecoration(
                      labelText: 'Email'
                    ),
                    onSaved: (input)=>email=input,
                  ),
                ),
                   ListTile(
                  leading: Icon(Icons.phone),
                  title: TextFormField(
                    validator:(input){
                      if(input.isEmpty){
                        return 'Enter Mobile';
                      }
                    },
                    decoration: InputDecoration(
                      labelText: 'Mobile'
                    ),
                    onSaved: (input)=>mobile=input,
                  ),
                ),
                   ListTile(
                  leading: Icon(Icons.school),
                  title: TextFormField(
                    validator:(input){
                      if(input.isEmpty){
                        return 'Enter collegename';
                      }
                    },
                    decoration: InputDecoration(
                      labelText: 'collegename'
                    ),
                    onSaved: (input)=>collegename=input,
                  ),
                ),
                ButtonTheme(
                  height: 40.0,
                  minWidth: 200.0,
                  child: RaisedButton(
                    onPressed: _sendToNextScreen,
                    color:Colors.greenAccent,
                    child: Text(
                      'Save',
                      style:TextStyle(
                        color:Colors.white,
                      ),

                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0)
                    ),
                  ),

                ),
                Padding(
                  padding: EdgeInsets.all(10.0),
                )
              ],
            ),
          ),
        ),
      ),
      
    );
  }
  _sendToNextScreen(){
    if(_key.currentState.validate()){
      //saves to global key
      _key.currentState.save();
      //send to next screen
      Navigator.push(context,
      MaterialPageRoute(
        builder: (context)=>MyHomePage(
          name:name,
          mobile:mobile,
          email:email,
          collegename:collegename,
        )
      )
      );
    }
    else{
      setState(() {
       _autovalidate=true; 
      });
    }
  }
}