import 'package:flutter/material.dart';

void main()=> runApp(MaterialApp(
    home: HOME()
));

class HOME extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
          backgroundColor: Colors.black ,
          title: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                IconButton(
                  onPressed: () {
                    print('yo');
                  },
                  icon: Icon(Icons.add),
                  color: Colors.white,
                ),
              ]
          )
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image(
            image: AssetImage('assets/load1.jpg'),
          ),
        ],
      ),
      backgroundColor: Colors.black,


    );
  }

}
