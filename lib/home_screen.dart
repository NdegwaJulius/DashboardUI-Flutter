import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatefulWidget {
  //const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    var cardTextStyle = TextStyle(
        fontFamily: 'Montserrat Regular', fontSize: 14, color: Colors.grey);
    return Scaffold(
      body: Stack(children: <Widget>[
        Container(
          height: size.height * .3,
          decoration: BoxDecoration(
              image: DecorationImage(
                  alignment: Alignment.topCenter,
                  fit: BoxFit.fill,
                  image: AssetImage('assets/images/top_header.png'))),
        ),
        SafeArea(
          child: Padding(
            padding: EdgeInsets.all(18.0),
            child: Column(
              children: <Widget>[
                Container(
                  height: 64,
                  margin: EdgeInsets.only(bottom: 6),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      CircleAvatar(
                        radius: 32,
                        backgroundImage: NetworkImage(
                            'https://media1-production-mightynetworks.imgix.net/asset/6976670/profilepic.jpeg?ixlib=rails-0.3.0&fm=jpg&q=100&auto=format&w=196&h=196&fit=crop&crop=faces'),
                      ),
                      SizedBox(
                        width: 16,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'Julius Ndegwa',
                            style: TextStyle(
                                fontFamily: 'Montserrat Medium',
                                color: Colors.white,
                                fontSize: 20),
                          ),
                          Text(
                            'ID: 234895',
                            style: TextStyle(
                                fontFamily: 'Montserrat Medium',
                                color: Colors.white,
                                fontSize: 14),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                Expanded(
                  child: GridView.count(
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10,
                    primary: false,
                    children: <Widget>[
                      Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadiusDirectional.circular(18)),
                        elevation: 4,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            SvgPicture.network(
                              'https://image.flaticon.com/icons/svg/1904/1904425.svg',
                              height: 128,
                            ),
                            Text(
                              'Personal Data',
                              style: cardTextStyle,
                            )
                          ],
                        ),
                      ),
                      Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadiusDirectional.circular(18)),
                        elevation: 4,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            SvgPicture.network(
                              'https://image.flaticon.com/icons/svg/1904/1904565.svg',
                              height: 128,
                            ),
                            Text(
                              'Course Schedule',
                              style: cardTextStyle,
                            )
                          ],
                        ),
                      ),
                      Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadiusDirectional.circular(18)),
                        elevation: 4,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            SvgPicture.network(
                              'https://image.flaticon.com/icons/svg/1904/1904527.svg',
                              height: 128,
                            ),
                            Text(
                              'Attendance Recap',
                              style: cardTextStyle,
                            )
                          ],
                        ),
                      ),
                      Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadiusDirectional.circular(18)),
                        elevation: 4,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            SvgPicture.network(
                              'https://image.flaticon.com/icons/svg/1904/1904437.svg',
                              height: 128,
                            ),
                            Text(
                              'Study Result',
                              style: cardTextStyle,
                            )
                          ],
                        ),
                      ),
                      Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadiusDirectional.circular(18)),
                        elevation: 4,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            SvgPicture.network(
                              'https://image.flaticon.com/icons/svg/1904/1904235.svg',
                              height: 128,
                            ),
                            Text(
                              'Course Booking',
                              style: cardTextStyle,
                            )
                          ],
                        ),
                      ),
                      Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadiusDirectional.circular(18)),
                        elevation: 4,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            SvgPicture.network(
                              'https://image.flaticon.com/icons/svg/1904/1904221.svg',
                              height: 128,
                            ),
                            Text(
                              'Course Plan',
                              style: cardTextStyle,
                            )
                          ],
                        ),
                      ),
                    ],
                    crossAxisCount: 2,
                  ),
                ),
              ],
            ),
          ),
        ),
      ]),
    );
  }
}
