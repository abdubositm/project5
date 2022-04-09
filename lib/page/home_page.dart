import 'package:flutter/material.dart';
import 'package:myfirstproject/page/DetailPage.dart';
class HomePge extends StatefulWidget {
static final String id = 'home_page';

  @override
  State<HomePge> createState() => _HomePgeState();
}

class _HomePgeState extends State<HomePge> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Form(
        child: Column(
          children: [
            Padding(
                padding: EdgeInsets.symmetric(horizontal: 100,vertical: 100)
            ),
            Container(
              height: 45,
              decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(22.5)),
              width: double.infinity,
              child: TextField(
                onChanged: (value){},
                style: TextStyle(fontSize: 15,color: Colors.black54),
                decoration: InputDecoration(
                  hintText: 'Name',
                  hintStyle: TextStyle(color: Colors.grey),
                  border: InputBorder.none,
                ),
              ),
            ),
            Container(
              height: 45,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(22.5)),
              width: double.infinity ,
              child: TextField(
                onChanged: (value){},
                style: TextStyle(fontSize: 15,color: Colors.black54),
                decoration: InputDecoration(
                  hintText: 'Email',
                  hintStyle: TextStyle(color: Colors.grey),
                  border: InputBorder.none,
                ),
              ),
            ),
            Container(
              height: 45,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(22.5)),
              width: double.infinity ,
              child: TextField(
                onChanged: (value){},
                style: TextStyle(fontSize: 15,color: Colors.black54),
                decoration: InputDecoration(
                  hintText: 'PassWord',
                  hintStyle: TextStyle(color: Colors.grey),
                  border: InputBorder.none,
                ),
              ),
            ),
           Container(

             child:  FlatButton(
               minWidth: 251,
                 color: Colors.blue,
                 shape: RoundedRectangleBorder(
                     borderRadius: BorderRadius.circular(0)
                 ),
                 onPressed: (){
                 Future _openDetais() async{
                   Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context){
                     return new DetailPage(input:"helo",);
                   })
                       };
                 },
                 child: Text('Sign in')

             ),
           )
          ],
        ),

      ),
    );
  }
}
