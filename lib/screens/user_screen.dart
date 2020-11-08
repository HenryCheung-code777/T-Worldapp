import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
//import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tworld/register/welcome.dart';
import 'package:tworld/screens/home_screen.dart';
import 'package:tworld/screens/hotelList_screen.dart';

class UserProfileScreen extends StatefulWidget {
  const UserProfileScreen({Key key, this.user}) : super(key: key);
  final UserCredential user;
  @override
  _UserProfileScreenState createState() => _UserProfileScreenState();
}

class _UserProfileScreenState extends State<UserProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(
          color: Colors.black
        ),
        title: Text('User Profile',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.black
          ),
        ),
        elevation: 0,
        actions: <Widget>[
          Container(
            margin: EdgeInsets.only(right:10),
            child: IconButton(
              icon: Icon(Icons.logout),
              onPressed: _signOut,
            ),
          ),
        ],
      ),
        body: CustomScrollView(
          slivers: <Widget>[
            SliverToBoxAdapter(
              child: Container(
                margin: EdgeInsets.only(top: 20),
                height: 150,
                child: Column(
                  children: <Widget>[
                      SizedBox(
                          height: 100,
                          width: 100,
                        child: CircleAvatar(backgroundImage: AssetImage(
                          ('assets/images/china.jpg'),
                          ),
                        )
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text('Name: Bruce'),
                  ],
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Container(
                margin: EdgeInsets.only(left: 30, right: 30, bottom: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Text(
                          '213',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                        SizedBox(height: 3,),
                        Text('Posts'),
                      ],
                    ),
                    Divider(height: 10,
                      color: Colors.black,
                    ),
                    Column(
                      children: <Widget>[
                        Text(
                          '3k',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                        SizedBox(height: 3,),
                        Text('Followers'),
                      ],
                    ),
                    Divider(height: 10,
                      color: Colors.black,
                    ),
                    Column(
                      children: <Widget>[
                        Text('1k',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                        SizedBox(
                          height: 3,
                        ),
                        Text('Following'),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Column(
                children: <Widget>[
                  Divider(height: 10, color: Colors.black,),
                  Container(
                    margin: EdgeInsets.only(left: 50, right: 50, top: 10, bottom: 10),
                    child:  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Icon(Icons.grid_on),
                        Icon(Icons.list),
                        Icon(Icons.tag_faces)
                      ],
                    ),
                  ),
                  Divider(
                    height: 10, color: Colors.black,
                  ),
                ],
              ),
            ),
            //SliverToBoxAdapter(
              //child: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                //crossAxisCount: 3,
               // crossAxisSpacing: 10,
              //  mainAxisSpacing: 10,
             // ),
              //  itemBuilder: (context, index) {
             //   return RawMaterialButton(
               //   onPressed: () {},
                //  child: Container(
    //    decoration: BoxDecoration(
    //                borderRadius: BorderRadius.circular(15),
    //                image: AssetImage(_images[index].imagePath),
    //              )
    //            ),
    //          );
    //          }),
            //      ),
          ],
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

  void _signOut() {
    FirebaseAuth.instance.signOut();
    Navigator.push(context,
        MaterialPageRoute(builder: (context) => WelcomePage()));
  }
}