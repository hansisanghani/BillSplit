import 'package:billsplit/friends_record.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'homepage.dart';
import 'friends_record.dart';
import 'groups_records.dart';
import 'friends_new.dart';

class MyNavBar extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
      return Container(
      height: 100.0, // in logical pixels
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      decoration: BoxDecoration(border: Border.all(color: Colors.grey,)),
      // Row is a horizontal, linear layout.
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        //margin: const EdgeInsets.all(30),
                        child:
                        IconButton(
                          icon:Icon(
                            Icons.person,
                            size: 70.0,
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => FriendsRecord()),
                            );
                          }
                        )
                      ),
                      Container(
                        margin: const EdgeInsets.all(10),
                        child:
                        IconButton(
                          icon:Icon(
                            Icons.add_circle_outline,
                            size: 70.0
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => FriendsNew()),
                            );
                          }
                        ) 
                      ),
                      
                      Container(
                        margin: const EdgeInsets.all(30),
                        child:
                          //color: Colors.amber,
                          
                         IconButton(
                          icon:Icon(
                            Icons.people,
                            size: 70.0,
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => GroupsRecord()),
                            );
                          }
                        )
                      ),
                        
                      
                    ]
      )
      );
  }
}
