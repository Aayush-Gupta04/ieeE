
import 'package:flutter/material.dart';
import 'dart:async';


import 'package:flutter/widgets.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';


class HOME extends StatefulWidget {
  @override
  State<HOME> createState() => _HOMEState();
}

class _HOMEState extends State<HOME> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.black,
          title: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                IconButton(
                  onPressed: () {
                    Navigator.pushNamed(context,'/edit');
                  },
                  icon: Icon(Icons.edit_note),
                  color: Colors.white,
                ),
              ]
          )
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Image(
              image: AssetImage('assets/load1.jpg'),
              height: 200,
            ),
            Text(
              "YOUR NAME",
              style: TextStyle(
                color: Colors.white,
                fontSize: 55.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10,),
            Text(
              'Creativity never goes wrong, all you ',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
            Text(
              'need is the right direction',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
            SizedBox(height: 15,),
            Text(
              'Interests / Hobbies',
              style: TextStyle(
                color: Colors.white,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  child: CircleAvatar(
                    backgroundColor: Colors.grey[800],
                    radius: 50,
                    child: Text(
                        'GAMING',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                            fontWeight: FontWeight.bold
                        )
                    ),
                  ),
                ),

                Container(
                    margin: EdgeInsets.fromLTRB(0, 120, 0, 0),

                    child: CircleAvatar(
                        backgroundColor: Colors.grey[800],
                        radius: 50,
                        child: Text(
                            'DANCE',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 22,
                                fontWeight: FontWeight.bold

                            )
                        )
                    )
                ),
                Container(
                  child: CircleAvatar(
                    backgroundColor: Colors.grey[800],
                    radius: 50,
                    child: Text(
                      'SPORTS',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      backgroundColor: Colors.black,


    );
  }
}

class nextpage extends StatelessWidget {
  String name ,bio, Hobby1,Hobby2,Hobby3;
  var image;

  nextpage({required this.name,
    required this.bio,
    required this.Hobby1,
    required this.Hobby2,
    required this.Hobby3,
    required this.image,
  });

  Map<String , dynamic> toMap() {
    var map = Map<String, dynamic>();
    map['image']= image;
    map['name']=name;
    map['bio']= bio;
    map['Hobby1']= image;
    map['Hobby2']= image;
    map['Hobby3']= image;

    return map;
  }

  fromMapObject(Map<String, dynamic> map){
    this.image = map['image'];
    this.name = map['name'];
    this.bio = map['bio'];
    this.Hobby1 = map['Hobby1'];
    this.Hobby2 = map['Hobby2'];
    this.Hobby3 = map['Hobby3'];
  }


  @override
  Widget build(BuildContext context)  {
    TextEditingController _name = TextEditingController(text: name);
    TextEditingController _bio = TextEditingController(text: bio);
    TextEditingController _Hobby1 = TextEditingController(text: Hobby1);
    TextEditingController _Hobby2 = TextEditingController(text: Hobby2);
    TextEditingController _Hobby3 = TextEditingController(text: Hobby3);

    Future<void> database() async{
      WidgetsFlutterBinding.ensureInitialized();
      final database = openDatabase(
        join( await getDatabasesPath(), 'Portfolio.db'),
        onCreate: (db , version){
          return db.execute(
            'CREATE TABLE PORTFOLIO(image Text, name Text, bio Text, Hobby1 Text, Hobby2 Text, Hobby3 Text)',
          );
        },
        version: 1,
      );
    }






    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.black,
          title: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                IconButton(
                  onPressed: () {
                    print('');
                    Navigator.pushNamed(context,'/edit');
                  },
                  icon: Icon(Icons.edit_note),
                  color: Colors.white,
                ),
              ]
          )
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            if (image == null)
              Image(
                image: AssetImage('assets/load1.jpg'),
                height: 200,
              ),
            if (image != null) Image.file(
              image,
              height:200,

            ),



            TextField(
              controller: _name,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 50.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10,),
            Text(
              'Creativity never goes wrong, all you ',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
            Text(
              'need is the right direcrtion',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
            SizedBox(height: 15,),
            Text(
              'Interests / Hobbies',
              style: TextStyle(
                color: Colors.white,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  child: CircleAvatar(
                    backgroundColor: Colors.grey[800],
                    radius: 50,
                    child: TextField(
                        controller: _Hobby1,
                        textAlign: TextAlign.center,
                        decoration: InputDecoration(
                            border: InputBorder.none
                        ),
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                            fontWeight: FontWeight.bold
                        )
                    ),
                  ),
                ),

                Container(
                    margin: EdgeInsets.fromLTRB(0, 100, 0, 0),

                    child: CircleAvatar(
                      backgroundColor: Colors.grey[800],
                      radius: 50,
                      child: TextField(
                          controller: _Hobby2,
                          textAlign: TextAlign.center,
                          decoration: InputDecoration(
                              border: InputBorder.none
                          ),
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 22,
                              fontWeight: FontWeight.bold
                          )
                      ),
                    )
                ),
                Container(
                  child: CircleAvatar(
                    backgroundColor: Colors.grey[800],
                    radius: 50,
                    child: TextField(
                        controller: _Hobby3,
                        textAlign: TextAlign.center,
                        decoration: InputDecoration(
                            border: InputBorder.none
                        ),
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                            fontWeight: FontWeight.bold
                        )
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      backgroundColor: Colors.black,


    );
  }
}
