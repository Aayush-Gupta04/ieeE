import 'package:flutter/material.dart';

class edit extends StatelessWidget {
  const edit({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
      ),
      body:Center(
        child:Column(
          children: <Widget> [
            SizedBox(height: 20,),
            Text(
              "EDIT DETAILS",
              style: TextStyle(
                color: Colors.white,
                fontSize: 40,
              ),
            ),
            SizedBox(height: 20,),

            ElevatedButton(
              child: Text('Select Profile \nPhoto'),
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                primary: Colors.grey,
                padding: EdgeInsets.symmetric(horizontal: 5, vertical: 20),
                textStyle: TextStyle(
                  fontSize: 20,
                ),
              ),

            ),
            SizedBox(height: 20,),
            ElevatedButton(
              child: Text('Name'),
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                primary: Colors.grey,
                padding: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                textStyle: TextStyle(
                  fontSize: 20,
                ),
              ),

            ),
            SizedBox(height: 20,),
            ElevatedButton(
              child: Text('Bio'),
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                primary: Colors.grey,
                padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                textStyle: TextStyle(
                  fontSize: 20,
                ),
              ),

            ),
            SizedBox(height: 20,),
            ElevatedButton(
              child: Text('hobby 1'),
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                primary: Colors.grey,
                padding: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                textStyle: TextStyle(
                  fontSize: 20,
                ),
              ),

            ),
            SizedBox(height: 10,),
            ElevatedButton(
              child: Text('hobby 2'),
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                primary: Colors.grey,
                padding: EdgeInsets.symmetric(horizontal:40, vertical: 10),
                textStyle: TextStyle(
                  fontSize: 20,
                ),

              ),
            ),
            SizedBox(height: 10,),
            ElevatedButton(
              child: Text('Hobby 3'),
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                primary: Colors.grey,
                padding: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                textStyle: TextStyle(
                  fontSize: 20,
                ),
              ),

            ),
            SizedBox(height: 20,),
            ElevatedButton(
              child: Text('SAVE'),
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                primary: Colors.blueAccent,
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                textStyle: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
          ],
        ),
      ),
      backgroundColor: Colors.black,
    );

  }
}
