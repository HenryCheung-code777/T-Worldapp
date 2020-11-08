import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tworld/models/hotel_model.dart';
import 'package:tworld/screens/home_screen.dart';

class HotelScreen extends StatefulWidget{
    final Hotel hotel;

    HotelScreen({this.hotel});
    @override
    _HotelScreenState createState() => _HotelScreenState();
  }

class _HotelScreenState extends State<HotelScreen> {
  @override
  Widget build(BuildContext context) {
      return Scaffold(
        body: Stack(
          children: <Widget>[
            Container(
                foregroundDecoration: BoxDecoration(
                    color: Colors.black26
                ),
                height: 400,
                child: Image(
                    image: AssetImage(widget.hotel.imageUrl),
                    fit: BoxFit.cover)
            ),
            SingleChildScrollView(
              padding: const EdgeInsets.only(top: 16.0, bottom: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  const SizedBox(height: 250),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child:
                    Text(
                      widget.hotel.name,
                      style: TextStyle(
                        color: Colors.tealAccent,
                        fontSize: 22.0,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 1.2,
                      ),
                    ),
                  ),
                  Row(
                    children: <Widget>[
                      const SizedBox(width: 16.0),
                      Container(
                        padding: const EdgeInsets.symmetric(
                          vertical: 8.0,
                          horizontal: 16.0,
                        ),
                        decoration: BoxDecoration(
                            color: Colors.tealAccent,
                            borderRadius: BorderRadius.circular(20.0)),
                        child: Text(
                          ('${widget.hotel.review} / Review'),
                          style: TextStyle(
                              color: Colors.black, fontSize: 13.0),
                        ),
                      ),
                      Spacer(),
                      IconButton(
                        color: Colors.white,
                        icon: Icon(Icons.favorite_border),
                        onPressed: () {},
                      )
                    ],
                  ),
                  Container(
                    padding: const EdgeInsets.all(32.0),
                    color: Colors.white,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment
                                    .start,
                                children: <Widget>[
                                  Row(
                                    children: <Widget>[
                                      Icon(
                                        Icons.star,
                                        color: Colors.lightBlueAccent,
                                      ),
                                      Icon(
                                        Icons.star,
                                        color: Colors.lightBlueAccent,
                                      ),
                                      Icon(
                                        Icons.star,
                                        color: Colors.lightBlueAccent,
                                      ),
                                      Icon(
                                        Icons.star,
                                        color: Colors.lightBlueAccent,
                                      ),
                                      Icon(
                                        Icons.star_border,
                                        color: Colors.lightBlueAccent,
                                      ),
                                    ],
                                  ),
                                  Text.rich(TextSpan(children: [
                                    WidgetSpan(
                                        child: Icon(
                                          Icons.location_on, size: 16.0,
                                          color: Colors.black,)
                                    ),
                                    TextSpan(
                                        text: "8 km to centrum"
                                    )
                                  ]), style: TextStyle(
                                      color: Colors.grey, fontSize: 12.0),)
                                ],
                              ),
                            ),
                            Column(
                              children: <Widget>[
                                Text('\RM${widget.hotel.price}', style: TextStyle(
                                    color: Colors.lightBlueAccent,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20.0
                                ),),
                                Text("/per night", style: TextStyle(
                                    fontSize: 12.0,
                                    color: Colors.black
                                ),)
                              ],
                            )
                          ],
                        ),
                        const SizedBox(height: 30.0),
                        SizedBox(
                          width: double.infinity,
                          child: RaisedButton(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30.0)),
                            color: Colors.lightBlueAccent,
                            textColor: Colors.white,
                            child: Text("Book Now", style: TextStyle(
                                fontWeight: FontWeight.normal
                            ),),
                            padding: const EdgeInsets.symmetric(
                              vertical: 16.0,
                              horizontal: 32.0,
                            ),
                            onPressed: () {},
                          ),
                        ),
                        const SizedBox(height: 30.0),
                        Text("Description".toUpperCase(), style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 14.0
                        ),),
                        const SizedBox(height: 10.0),
                        Text(
                          "Lorem ipsum dolor sit, amet consectetur adipisicing elit. Ratione architecto autem quasi nisi iusto eius ex dolorum velit! Atque, veniam! Atque incidunt laudantium eveniet sint quod harum facere numquam molestias?",
                          textAlign: TextAlign.justify, style: TextStyle(
                            fontWeight: FontWeight.w300,
                            fontSize: 14.0
                        ),),
                        const SizedBox(height: 10.0),
                        Text(
                          "Lorem ipsum dolor sit, amet consectetur adipisicing elit. Ratione architecto autem quasi nisi iusto eius ex dolorum velit! Atque, veniam! Atque incidunt laudantium eveniet sint quod harum facere numquam molestias?",
                          textAlign: TextAlign.justify, style: TextStyle(
                            fontWeight: FontWeight.w300,
                            fontSize: 14.0
                        ),),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              child: AppBar(
                backgroundColor: Colors.transparent,
                elevation: 0,
                centerTitle: true,
                title: Text("DETAIL", style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.normal
                ),),
              ),
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: BottomAppBar(
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
                                MaterialPageRoute(builder: (context) => HomeScreen()));
                          }
                      ),
                      Spacer(),
                    ],
                  )
              ),
            )
          ],
        ),
      );
    }
  }