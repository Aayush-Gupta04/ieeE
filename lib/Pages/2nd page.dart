import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path_provider/path_provider.dart';
import 'package:keyboard_dismisser/keyboard_dismisser.dart';

import 'Homepage.dart';

class edit extends StatefulWidget {
  @override
  State<edit> createState() => _editState();
}

class _editState extends State<edit> {
  TextEditingController _name = TextEditingController();
  TextEditingController _bio = TextEditingController();
  TextEditingController _Hobby1 = TextEditingController();
  TextEditingController _Hobby2 = TextEditingController();
  TextEditingController _Hobby3 = TextEditingController();
  File? _img;



  @override
  Widget build(BuildContext context) {
    return KeyboardDismisser(
      child: Scaffold(
        resizeToAvoidBottomInset : false,
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
                  ImagePicker picker =ImagePicker();
                  final image = await picker.pickImage(source: ImageSource.gallery);
                  if (image==null) return;
                  final imgT = File(image.path);
                  setState(() {
                    this._img= imgT;
                  });
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
                  controller: _name,
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
                  controller: _bio,
                  keyboardType: TextInputType.multiline,
                  maxLines: 2,
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.grey[500],
                      contentPadding: EdgeInsets.fromLTRB(10, 10, 0,20),
                      labelStyle: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                      labelText: "BIO "


                  ),
                ),
              ),

              SizedBox(height: 20,),

              Container(
                width: 350,
                child: TextField(
                  controller: _Hobby1,
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
                  controller: _Hobby2,
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
                  controller: _Hobby3,
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
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(
                          builder: (context) => nextpage(
                            name: _name.text,
                            bio: _bio.text,
                            Hobby1: _Hobby1.text,
                            Hobby2: _Hobby2.text,
                            Hobby3: _Hobby3.text,
                          )),
                      );
                },
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

      ),
    );

  }
}



