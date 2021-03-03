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
                  
                  
                  
                    child: Theme(

                      data: new ThemeData(
                        primaryColor: Colors.redAccent,
                        primaryColorDark: Colors.red,
                      ),


                      child: TextField(



                        decoration: InputDecoration(hintText: 'Name' ,
                            hoverColor: Colors.amber,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),

                            )),


                        onChanged: (text)  {
                          a = text;

                         // geek.geek_name= text;
                          mclass.name = text;

                        },

                      ),
                    )
                ),

                Container(

                  margin: EdgeInsets.only(top: 20),



                    child: TextField(



                     // decoration: InputDecoration(hintText: 'Phone',contentPadding: EdgeInsets.only(left: 10)),
                        decoration: new InputDecoration(

                          enabledBorder:  OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: const BorderSide(color: Colors.lightGreen, width: 2),



                          ),

                            focusedBorder: OutlineInputBorder(
                           borderRadius: BorderRadius.circular(10),
                             borderSide: const BorderSide(color: Colors.pink, width: 2),
                         )
                        ),



                      onChanged: (text) {
                        a = text;

                      //  geek.geek_name= text;

                        mclass.phone = text;

                      },

                    )
                ),

                Container(

                  margin: EdgeInsets.only(top: 20),

                  decoration: BoxDecoration(

                      color: Colors.blue[100],
                      border: Border.all(color: Colors.black,width: 1,)
                      ,borderRadius: BorderRadius.circular(10)

                  ),
                  child: FlatButton(
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



