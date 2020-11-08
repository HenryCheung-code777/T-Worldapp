import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tworld/models/destination_model.dart';
import 'package:tworld/screens/destination_screen.dart';
import 'package:tworld/screens/home_screen.dart';
import 'package:tworld/screens/hotelList_screen.dart';
import 'package:tworld/screens/user_screen.dart';

class DestinationListScreen extends StatefulWidget{
  final Destination destination;
  DestinationListScreen({this.destination});
  @override
  _DestinationListScreenState createState() => _DestinationListScreenState();
}

class _DestinationListScreenState extends State<DestinationListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Top Destinations'),
        backgroundColor: Colors.lightBlueAccent[700],
      ),
      body: Container(
        child: ListView.builder(
          itemCount: destinations.length,
          itemBuilder: (context, index) {
            Destination destination = destinations[index];
            return Column(
              children: <Widget>[
                Divider(
                  height: 12.0,
                ),
                ListTile(
                  isThreeLine: true,
                  leading: CircleAvatar(
                    radius: 24.0,
                    backgroundImage: AssetImage(destination.imageUrl),
                  ),
                  title: Row(
                    children: <Widget>[
                      Text(destination.country),
                      SizedBox(
                        width: 16.0,
                      ),
                    ],
                  ),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(destination.city,
                        style: TextStyle(fontSize: 16.0),),
                      Text('${destination.locationCoords} / Location'),
                    ],
                  ),
                  trailing: IconButton(
                    icon: Icon(Icons.arrow_forward),
                    iconSize: 14.0,
                    onPressed: (){
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => DestinationScreen(destination: destination,)));
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
                          MaterialPageRoute(builder: (context) => HotelListScreen()));
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
                          MaterialPageRoute(builder: (context) => HotelListScreen()));
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