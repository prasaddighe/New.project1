import 'package:flutter/material.dart';
import 'package:buttons_tabbar/buttons_tabbar.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        body: SafeArea(
          child: Padding(
            padding:  EdgeInsets.only(top: 30, left: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text("Hello"),
                const Row(
                  children: [
                    Text(
                      "Vikas Sodnar",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(width: 190),
                    Icon(Icons.person,),
                  ],
                ),
                 Row(
                  children: [
                    Text("Your today's performance"),
                  ],
                ),
                SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      height: 100,
                      width: 100,
                      color: Colors.grey,
                      child: const Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text("Orders"),
                          Text("124", style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold)),
                        ],
                      ),
                    ),
                    Container(
                      height: 100,
                      width: 100,
                      color: Colors.green[300],
                      child: const Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text("Orders"),
                          Text("223", style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold)),
                        ],
                      ),
                    ),
                    Container(
                      height: 100,
                      width: 100,
                      color: Colors.pink[50],
                      child: const Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text("Orders"),
                          Text("12k", style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold)),
                        ],
                      ),
                    ),
                  ],
                ),
                Expanded(
                  child: DefaultTabController(
                    length: 3, // Number of tabs
                    child: Column(
                      children: <Widget>[
                        ButtonsTabBar(
                          backgroundColor: Colors.red,
                          borderWidth: 2,
                          borderColor: Colors.black,
                          labelStyle: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                          unselectedLabelStyle: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                          tabs: [
                            Tab(icon: Icon(Icons.person_add),text: 'New Lead'),
                            Tab(icon: Icon(Icons.near_me),text: 'New Order'),
                            Tab(icon: Icon(Icons.person_add),text: 'Compagian'),
                          ],
                        ),
                        
                      ],
                    ),
                  ),  
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: FirstScreen(),
  ));
}
