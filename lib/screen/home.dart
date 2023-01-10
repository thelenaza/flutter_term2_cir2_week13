import 'package:flutter/material.dart';

import 'login.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
      ),
      body: Center(
        child: Text("Myapp"),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text("Leena"),
              accountEmail: Text("leena07@gmail.com"),
              currentAccountPicture: CircleAvatar(
                //child: Icon(Icons.android),
                backgroundImage: NetworkImage(
                    "https://upload.wikimedia.org/wikipedia/th/9/9a/Monkey_D._Luffy_Anime_Post_Timeskip.png"),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.home,
                color: Colors.black,
                size: 38,
              ),
              title: Text(
                "Home",
                style: TextStyle(color: Colors.red, fontSize: 15),
              ),
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HomePage(),
                  ),
                );
              },
            ),
            ListTile(
              leading: Icon(
                Icons.login,
                color: Colors.black,
                size: 38,
              ),
              title: Text("Login", style: TextStyle(color: Colors.red, fontSize: 15),),
              onTap: () {
                //Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => LoginPage(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
