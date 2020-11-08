import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tworld/screens/map_screen.dart';
import 'package:tworld/screens/user_screen.dart';
import 'package:tworld/widgets/destination_carousel.dart';
import 'package:tworld/widgets/hotel_carousel.dart';
import 'package:tworld/widgets/newoffer_carousel.dart';
import 'package:url_launcher/url_launcher.dart';
import 'hotelList_screen.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key key}) : super(key: key);
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  //int _currentTab = 0;
  //final List<Widget> screen = [
  //  HotelListScreen(),
  //  Tworldmap(),
  //  HotelListScreen(),
  //  Tworldmap(),
  //];
  //Widget currentScreen = HomeScreen();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(vertical: 30.0),
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(left: 20.0, right: 120.0),
              child: Text(
                'T-WORLD TRAVEL GUIDE',
                style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            SizedBox(height: 20.0),
            Container(
              padding: EdgeInsets.symmetric(vertical: 20.0),
              alignment: FractionalOffset.topLeft,
              color: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  GestureDetector(
                    onTap: () async {
                      const url = 'Place your URL';

                      if (await canLaunch(url)) {
                        await launch(url, forceSafariVC: false);
                      } else {
                        throw 'Could not launch $url';
                      }
                    },
                      child: Icon(
                      FontAwesomeIcons.plane,
                      size: 40.0,
                      color: Colors.lightBlueAccent
                    ),
                  ),
                  GestureDetector(
                    onTap: (){
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => HotelListScreen()));
                    },
                    child: Icon(
                        FontAwesomeIcons.hotel,
                        size: 40.0,
                        color: Colors.lightBlueAccent
                    ),
                  ),
                  GestureDetector(
                    onTap: (){
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Tworldmap()));
                    },
                    child: Icon(
                        FontAwesomeIcons.searchLocation,
                        size: 40.0,
                        color: Colors.lightBlueAccent
                    ),
                  ),
                  GestureDetector(
                    onTap: () async {
                      const url = 'Place your URL';

                      if (await canLaunch(url)) {
                        await launch(url, forceSafariVC: false);
                      } else {
                        throw 'Could not launch $url';
                      }
                    },
                    child: Icon(
                        FontAwesomeIcons.car,
                        size: 40.0,
                        color: Colors.lightBlueAccent
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20.0),
            DestinationCarousel(),
            SizedBox(height: 20.0),
            HotelCarousel(),
            SizedBox(height: 20.0),
            NewOfferCarousel(),
          ],
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