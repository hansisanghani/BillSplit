import 'package:flutter/material.dart';
import 'appbar.dart';
import 'groups_records.dart';
import 'package:hexcolor/hexcolor.dart';

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
                SizedBox(
                  height: 5,
                ),
                Container(
                    padding: EdgeInsets.all(20.0),
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: "Name", border: OutlineInputBorder()),
                      keyboardType: TextInputType.name,
                    )),
                SizedBox(
                  height: 5,
                ),
                Container(
                    padding: EdgeInsets.all(20.0),
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: "Amount", border: OutlineInputBorder()),
                      keyboardType: TextInputType.name,
                    )),
                SizedBox(
                  height: 5,
                ),
                Container(
                    padding: EdgeInsets.all(20.0),
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: "No. of Members",
                          border: OutlineInputBorder()),
                      keyboardType: TextInputType.name,
                    )),
                SizedBox(
                  height: 5,
                ),
                Container(
                    padding: EdgeInsets.all(20.0),
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: "Description",
                          border: OutlineInputBorder()),
                      keyboardType: TextInputType.name,
                    )),
                SizedBox(
                  height: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  Container(
                    padding: EdgeInsets.all(10.0),
                    child: Text('Paid by me:',
                      style: TextStyle(
                        fontSize: 17,
                      )
                    )
 
                    ),
                
                SwitchWidget(),
                ],)
                                
                
              ]
            ),
        ],
      ),
      // bottomNavigationBar: RaisedButton(
      //   onPressed: () {Navigator.push(
      //     context,
      //     MaterialPageRoute(builder: (context) => GroupsRecord()),
      //     );},
      //     color: Colors.tealAccent,
      //     child:Text('ADD'),
            
          
      // )
        // icon: 
        // backgroundColor: HexColor('#34F5CF'),
        // label: ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => GroupsRecord()),
                            );},
        icon: Icon(Icons.add),
        backgroundColor: HexColor('#34F5CF'),
        label: Text('ADD'),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      resizeToAvoidBottomInset: false
    );
  }
}

class SwitchWidget extends StatefulWidget {
    @override
    SwitchWidgetClass createState() => new SwitchWidgetClass();
  }
  
class SwitchWidgetClass extends State {
 
  bool switchControl = false;
 
  void toggleSwitch(bool value) {
 
      if(switchControl == false)
      {
        setState(() {
          switchControl = true;
        });
        // Put your code here which you want to execute on Switch ON event.
 
      }
      else
      {
        setState(() {
          switchControl = false;
        });
        // Put your code here which you want to execute on Switch OFF event.
      }
  }
  
    @override
    Widget build(BuildContext context) {
      return Column( 
              //mainAxisAlignment: MainAxisAlignment.center,
              children:[ Transform.scale( 
              scale: 1.5,
              child: Switch(
              onChanged: toggleSwitch,
              value: switchControl,
              activeColor: Colors.black,
              activeTrackColor: Colors.tealAccent,
              inactiveThumbColor: Colors.white,
              inactiveTrackColor: Colors.grey,
            )
          ), 

 
      ]);
  }
}