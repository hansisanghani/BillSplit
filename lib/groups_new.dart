import 'package:flutter/material.dart';
import 'appbar.dart';

class GroupsNew extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: ListView(
        children: <Widget>[
          Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                MyAppBar(
                  title: Text(
                    'GROUPS',
                    style: Theme.of(context).primaryTextTheme.headline6,
                  ),
                ),
                Container(
                  child: Text('Friend',
                      style: TextStyle(
                        fontSize: 25.0,
                        color: Colors.tealAccent,
                        fontWeight: FontWeight.bold,
                      )),
                  padding: EdgeInsets.all(20.0),
                ),
                Container(
                    padding: EdgeInsets.all(10.0),
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: "Name", border: OutlineInputBorder()),
                      keyboardType: TextInputType.name,
                    )),
                SizedBox(
                  height: 20,
                ),
                Container(
                    padding: EdgeInsets.all(10.0),
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: "Amount", border: OutlineInputBorder()),
                      keyboardType: TextInputType.name,
                    )),
                SizedBox(
                  height: 20,
                ),
                Container(
                    padding: EdgeInsets.all(10.0),
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: "No of Members",
                          border: OutlineInputBorder()),
                      keyboardType: TextInputType.name,
                    )),
                SizedBox(
                  height: 20,
                ),
                Container(
                    padding: EdgeInsets.all(10.0),
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: "Description",
                          border: OutlineInputBorder()),
                      keyboardType: TextInputType.name,
                    )),
                SizedBox(
                  height: 20,
                ),
              ]),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
        backgroundColor: Colors.tealAccent,
      ),
    );
  }
}
