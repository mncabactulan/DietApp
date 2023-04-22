import 'package:flutter/material.dart';
import 'profile.dart';
import 'Day1.dart';
import 'Day2.dart';
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        centerTitle: true,
        backgroundColor: Colors.green,
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.account_circle_rounded,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (_) => ProfileScreen()));
            },

          )
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.green,
                  image: DecorationImage(
                      image: AssetImage("images/logo.jpg"),
                      fit: BoxFit.cover)
              ),
              child: Text(''),
            ),
            ListTile(
              title: const Text('Day 1'),
              trailing: Icon(Icons.keyboard_arrow_right_sharp),
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Day1())
                );
              },
            ),
            ListTile(
              title: const Text('Day 2'),
              trailing: Icon(Icons.keyboard_arrow_right_sharp),
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Day2())
                );
              },
            ),
          ],
        ),
      ),

    );
  }
}

