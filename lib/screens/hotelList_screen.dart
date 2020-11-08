import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tworld/models/hotel_model.dart';
import 'package:tworld/screens/home_screen.dart';
import 'package:tworld/screens/user_screen.dart';
import 'hotel_screen.dart';

class HotelListScreen extends StatefulWidget{
  final Hotel hotel;
  HotelListScreen({this.hotel});
  @override
  _HotelListScreenState createState() => _HotelListScreenState();
}

class _HotelListScreenState extends State<HotelListScreen> {
  @override
  Widget build(BuildContext context) {
        return Scaffold(
          appBar: AppBar(
            title: Text('Exclusive Hotel'),
            backgroundColor: Colors.lightBlueAccent[700],
            ),
          body: Container(
            child: ListView.builder(
              itemCount: hotels.length,
              itemBuilder: (context, index) {
                Hotel hotel = hotels[index];
                return Column(
                  children: <Widget>[
                    Divider(
                      height: 12.0,
                    ),
                    ListTile(
                      isThreeLine: true,
                      leading: CircleAvatar(
                        radius: 24.0,
                        backgroundImage: AssetImage(hotel.imageUrl),
                      ),
                      title: Row(
                        children: <Widget>[
                          Text(hotel.name),
                          SizedBox(
                            width: 16.0,
                          ),
                        ],
                      ),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(hotel.address,
                            style: TextStyle(fontSize: 16.0),),
                          Text('\RM${hotel.price} / night'),
                        ],
                      ),
                      trailing: IconButton(
                        icon: Icon(Icons.arrow_forward),
                        iconSize: 14.0,
                        onPressed: (){
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => HotelScreen(hotel: hotel,)));
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