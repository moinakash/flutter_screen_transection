import 'package:flutter/material.dart';
import 'main_two.dart';

void main() => runApp(HomeScreen());

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false, title: "app name", home: Home());
  }
}

class Home extends StatelessWidget {

  String a;

  Gfg geek = new Gfg();

  modelClass mclass = new modelClass();


  @override
  Widget build(BuildContext context) {



    return Scaffold(
      appBar: AppBar(
        title: Text('First Screen'),
      ),
      body: Material(
        child: Container(
          padding: EdgeInsets.all(40),
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                Container(
                    child: TextField(

                      decoration: InputDecoration(labelText: 'Name'),
                      onChanged: (text)  {
                        a = text;

                       // geek.geek_name= text;
                        mclass.name = text;

                      },

                    )
                ),

                Container(
                    child: TextField(

                      decoration: InputDecoration(labelText: 'Phone'),
                      onChanged: (text) {
                        a = text;

                      //  geek.geek_name= text;

                        mclass.phone = text;

                      },

                    )
                ),

                Container(
                  child: RaisedButton(
                    child: Text('Next >'),
                    onPressed: () {
                      //   a = "hello farhad";
                      Navigator.push(
                          context,
                          MaterialPageRoute(


                              builder: (context) => SecScreen(mclass.name,mclass.phone)));
                    },
                  ),
                ),
              ],
            )),
      ),
    );
  }
}


class modelClass{

  String name;
  String phone;

  set setName(String n){

    this.setName= n;
  }

  String get setName{

    return name;
  }

  set setPhone(String p){

    this.setPhone= p;
  }

  String get setPhone{

    return phone;
  }

}

class Gfg {

  // Creating a field
  String geekName;

  // Using the getter
  // method to take input
  String get geek_name {
    return geekName;
  }

  // Using the setter method
  // to set the input
  set geek_name (String name) {
    this.geekName = name;
  }
}



