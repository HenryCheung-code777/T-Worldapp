import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tworld/models/newoffer_model.dart';
import 'package:tworld/screens/home_screen.dart';
import 'package:tworld/screens/user_screen.dart';

class NewofferScreen extends StatefulWidget{
  final NewOffer newoffer;
  NewofferScreen({this.newoffer});
  @override
  _NewofferScreenState createState() => _NewofferScreenState();
}

class _NewofferScreenState extends State<NewofferScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('New & Offer'),
          backgroundColor: Colors.lightBlueAccent[700],
        ),
        body: Container(
          child: ListView.builder(
            itemCount: newoffers.length,
            itemBuilder: (context, index) {
              NewOffer newoffer = newoffers[index];
              return Column(
                children: <Widget>[
                  Divider(
                    height: 12.0,
                  ),
                  ListTile(
                    isThreeLine: true,
                    leading: CircleAvatar(
                      radius: 24.0,
                      backgroundImage: AssetImage(newoffer.imageUrl),
                    ),
                    title: Row(
                      children: <Widget>[
                        Text("Coming Soon"),
                        SizedBox(
                          width: 16.0,
                        ),
                      ],
                    ),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text("",
                          style: TextStyle(fontSize: 16.0),),
                        Text(""),
                      ],
                    ),
                    trailing: IconButton(
                      icon: Icon(Icons.arrow_forward),
                      iconSize: 14.0,
                      onPressed: (){
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => HomeScreen()));
                      },
                    ),
                  ),
                ],
              );
            },
          ),
        ),
        bottomNavigationBar: BottomAppBar(
            child: Row(
              children: <Widget>[
                Spacer(),
                IconButton(
                    icon: Icon(FontAwesomeIcons.home,
                      size: 30.0,
                      color: Colors.lightBlueAccent,
                    ),
                    onPressed: (){
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => HomeScreen()));
                    }
                ),
                Spacer(),
                IconButton(
                    icon: Icon(Icons.book,
                      size: 30.0,
                      color: Colors.lightBlueAccent,
                    ),
                    onPressed: (){
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => HomeScreen()));
                    }
                ),
                Spacer(),
                IconButton(
                    icon: Icon(Icons.favorite,
                      size: 30.0,
                      color: Colors.lightBlueAccent,
                    ),
                    onPressed: (){
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => HomeScreen()));
                    }
                ),
                Spacer(),
                IconButton(
                    icon: Icon(Icons.account_circle,
                      size: 30.0,
                      color: Colors.lightBlueAccent,
                    ),
                    onPressed: (){
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => UserProfileScreen()));
                    }
                ),
                Spacer(),
              ],
            )
        )
    );
  }
}