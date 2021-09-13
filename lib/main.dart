import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:mailto/mailto.dart';
import 'package:flutter/services.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MyCard',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyCard(),
    );
  }
}

class MyCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Business Card App"),
        backgroundColor: Colors.blue.shade400,
      ),
      backgroundColor: Colors.teal,

      body: SafeArea(

          child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[

            CircleAvatar(
              radius: 50.0,
              backgroundImage: AssetImage("assets/profile.jpg"),
            ),

            Text(
              'Harish Singh',
              style: TextStyle(
                fontFamily: 'Pacifico',
                fontSize: 30.0,
                color: Colors.white,
              ),
            ),

            Text(
              'PONDICHERRY ENG. COLLEGE',
              style: TextStyle(
                fontFamily: 'Source Sans Pro',
                fontSize: 22.0,
                letterSpacing: 1.0,
                color: Colors.teal.shade100,
                fontWeight: FontWeight.bold,
              ),
            ),

            SizedBox(
              height: 20.0,
              width: 200.0,
              child: Divider(
                color: Colors.teal.shade100,
              ),
            ),

            Card(
              color: Colors.white,
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
              child: ListTile(
                leading: Icon( Icons.phone,
                  color: Colors.teal,
                ),
                title: Text(
                  '+91 9455408936',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontFamily: 'Source Sans Pro',
                    color: Colors.teal.shade900,
                  ),
                ),
                onTap: () => launch('tel:9455408936'),
              ),
            ),

            Card(
              color: Colors.white,
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
              child: ListTile(
                leading: Icon(Icons.email,
                  color: Colors.teal,
                ),
                title: Text(
                  'singhharish734@pec.edu',
                  style: TextStyle(
                    fontSize: 19.0,
                    fontFamily: 'Source Sans Pro',
                    color: Colors.teal.shade900,
                  ),
                ),
                onTap: () => launch('mailto:singhharish734@pec.edu'),
              ),
            ),

            Card(
              color: Colors.white,
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
              child: ListTile(
                  leading: Icon(FontAwesomeIcons.github,
                  color: Colors.teal,
                ),
                title: Text(
                  'github.com/singh-harish',
                  style: TextStyle(
                    fontSize: 19.0,
                    fontFamily: 'Source Sans Pro',
                    color: Colors.teal.shade900,
                  ),
                ),
                onTap: () => launch('https://github.com/singh-harish'),
              ),
            ),

            Card(
              color: Colors.white,
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
              child: ListTile(
                leading: Icon(FontAwesomeIcons.linkedin,
                  color: Colors.teal,
                ),
                title: Text(
                  'linkedin.com/in/singh-harish',
                  style: TextStyle(
                    fontSize: 18.0,
                    fontFamily: 'Source Sans Pro',
                    color: Colors.teal.shade900,
                  ),
                ),
                onTap: () => launch('https://linkedin.com/in/singh-harish'),
              ),
            ),

            Card(
              color: Colors.white,
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
              child: ListTile(
                leading: Icon(FontAwesomeIcons.instagramSquare,
                  color: Colors.teal,
                ),
                title: new Text(
                  '@singh_harish_ig',
                  style: TextStyle(
                    fontSize: 19.0,
                    fontFamily: 'Source Sans Pro',
                    color: Colors.teal.shade900,
                  ),
                ),
                onTap: () => launch('https://instagram.com/singh_harish_ig'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}