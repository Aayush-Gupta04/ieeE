import 'package:flutter/material.dart';



class HOME extends StatefulWidget {
  @override
  State<HOME> createState() => _HOMEState();
}

class _HOMEState extends State<HOME> {
  String name = "YOUR NAME";
  String Hobby_1 = "Gaming";
  String Hobby_2 = "Sports";
  String Hobby_3 = "Dance";

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
                    print('Sorry was"nt able to do the pic');
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
            ),
            Text(
              "$name",
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
                    child: Text(
                        '$Hobby_1',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                            fontWeight: FontWeight.bold
                        )
                    ),
                  ),
                ),

                Container(
                    margin: EdgeInsets.fromLTRB(0, 105, 0, 0),

                    child: CircleAvatar(
                        backgroundColor: Colors.grey[800],
                        radius: 50,
                        child: Text(
                            '$Hobby_2',
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
                      '$Hobby_3',
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