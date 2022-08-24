import 'package:flutter/material.dart';

void main() {
  runApp(HomeScreen());
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(
          children: [
            Container(
              alignment: Alignment.topCenter,
              child: Image(
                image: AssetImage('lib/images/art.png'),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(
                  width: 420,
                  height: 35,
                  child: Container(
                    alignment: Alignment.center,
                    child: TextFormField(
                      decoration: InputDecoration(
                        labelText: 'search',
                        prefixIcon: Padding(
                          padding: EdgeInsets.all(10),
                          child: Icon(Icons.search),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(80),
                        ),
                      ),
                    ),
                  ),
                ),
                IconButton(
                  onPressed: (null),
                  icon: Icon(
                    Icons.shopping_cart,
                    color: Colors.blue.shade300,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                TextButton(
                  onPressed: (null),
                  child: Text(
                    'All',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                TextButton(
                  onPressed: (null),
                  child: Text(
                    'planet',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                TextButton(
                  onPressed: (null),
                  child: Text(
                    'seeds',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                TextButton(
                  onPressed: (null),
                  child: Text(
                    'Tools',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: BottomNavigationBar(
                items: const <BottomNavigationBarItem>[
                  BottomNavigationBarItem(
                    icon: Icon(Icons.newspaper, color: Colors.black),
                    label: 'categories',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(
                      Icons.document_scanner,
                      color: Colors.black,
                    ),
                    label: 'search by photo',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(
                      Icons.home,
                      color: Colors.green,
                    ),
                    label: 'home',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(
                      Icons.notifications_none,
                      color: Colors.black,
                    ),
                    label: 'notifications',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(
                      Icons.person,
                      color: Colors.black,
                    ),
                    label: 'profile',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
