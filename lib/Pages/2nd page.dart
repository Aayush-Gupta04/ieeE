import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

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
            Text(
              "EDIT DETAILS",
              style: TextStyle(
                color: Colors.white,
                fontSize: 40,
              ),
            ),
            SizedBox(height: 20,),

            ElevatedButton(
              child: Text('Select Profile \n Photo'),
              onPressed: () async {
                final image = await ImagePicker().pickImage(source: ImageSource.gallery);
                },
              style: ElevatedButton.styleFrom(
                primary: Colors.grey,
                padding: EdgeInsets.symmetric(horizontal: 5, vertical: 15),
                textStyle: TextStyle(
                  fontSize: 20,
                ),
              ),

            ),
            SizedBox(height: 10,),

            Container(
              height: 45,
              width: 350,
              child: TextField(
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.grey[500],
                    labelStyle: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                    ),
                    labelText: "Name"


                ),
              ),
            ),

            SizedBox(height: 20,),

            Container(
              width: 350,
              child: TextField(
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.grey[500],
                    contentPadding: EdgeInsets.fromLTRB(10, 10, 0,40),
                    helperMaxLines: 3,
                    labelStyle: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                    labelText: "BIO \n \n "


                ),
              ),
            ),

            SizedBox(height: 20,),

            Container(
              width: 350,
              child: TextField(
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.grey[500],
                    labelStyle: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                    ),
                    labelText: "Hobby-1"


                ),
              ),
            ),

            SizedBox(height: 10,),

            Container(
              width: 350,
              child: TextField(
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.grey[500],
                    labelStyle: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                    ),
                    labelText: "Hobby-2"


                ),
              ),
            ),

            SizedBox(height: 10,),

            Container(
              width: 350,
              child: TextField(
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.grey[500],
                    labelStyle: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                    ),
                    labelText: "Hobby-3"


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
