import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Instagram clon',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),),

      ),
        body: _buildbody(),
    );
  }

  Widget _buildbody() {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: SafeArea(
          child: SingleChildScrollView(
            child: Center(
              child: Column(
                children: <Widget>[
                  Text('Instram에 오신것을 환영합니다.',
                    style: TextStyle(fontSize: 24.0),
                  ),
                  Padding(padding: EdgeInsets.all(8.0)),
                  Text('사진과 동영상을 보려면 팔로우 하세요',
                    style: TextStyle(fontSize: 15.0),
                  ),
                  Padding(padding: EdgeInsets.all(16.0)),
               SizedBox(
                 width: 240.0,
                 child: Card(
                   elevation: 4.0,
                   child: Column(
                     children: <Widget>[
                       SizedBox(
                         width: 80.0,
                           height: 80.0,
                           child: CircleAvatar(
                             backgroundImage: NetworkImage('https://i5.walmartimages.ca/images/Enlarge/094/514/6000200094514.jpg'),
                           )
                       ),
                       Padding(padding: EdgeInsets.all(8.0),),
                       Text('bj3144@gamil.com',
                           style: TextStyle(fontWeight: FontWeight.bold)),
                       Text('김범주'),
                       Padding(padding: EdgeInsets.all(8.0),),
                       Row(
                         mainAxisAlignment: MainAxisAlignment.center,
                         children: <Widget>[
                           SizedBox(
                             width: 70.0,
                             height: 70.0,
                             child: Image.network('https://i5.walmartimages.ca/images/Enlarge/094/514/6000200094514.jpg', fit: BoxFit.cover),
                           ),
                           Padding(padding: EdgeInsets.all(1.0),),
                           SizedBox(
                             width: 70.0,
                             height: 70.0,
                             child: Image.network('https://i5.walmartimages.ca/images/Enlarge/094/514/6000200094514.jpg', fit: BoxFit.cover),
                           ),
                           Padding(padding: EdgeInsets.all(1.0),),
                           SizedBox(
                             width: 70.0,
                             height: 70.0,
                             child: Image.network('https://i5.walmartimages.ca/images/Enlarge/094/514/6000200094514.jpg', fit: BoxFit.cover),
                           ),
                           Padding(padding: EdgeInsets.all(1.0),),
                         ],
                       ),
                       Padding(padding: EdgeInsets.all(4.0),),
                       Text('페이스북 친구'),
                       Padding(padding: EdgeInsets.all(4.0),),
                       RaisedButton(
                         onPressed: () {  },
                         child: Text('팔로우'),
                         color: Colors.blueAccent,
                         textColor: Colors.white,

                       ),
                       Padding(padding: EdgeInsets.all(8.0),),
                     ],
                   ),
                 ),
               )
              ],
            )
          )
      ),
    ));
  }
}
