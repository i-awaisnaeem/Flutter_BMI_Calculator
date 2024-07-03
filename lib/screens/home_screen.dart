
import 'package:flutter/material.dart';
import 'package:flutter_bmi_calculator/components/IconContents.dart';
import 'package:flutter_bmi_calculator/constants.dart';
import 'package:flutter_bmi_calculator/screens/input_page.dart';
import 'package:flutter_bmi_calculator/components/ReuseableCard.dart';
import 'package:flutter_bmi_calculator/screens/login_screen.dart';


class HomeScreen extends StatefulWidget {
  static const String id = 'home_screen';

  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kInactiveCardColor,
      appBar: AppBar(
        title: const Text('Dashboard'),
      ),
      drawer: Drawer(
        backgroundColor: kInactiveCardColor,
        child: ListView(
          padding: EdgeInsets.zero,
          children:  [
            const UserAccountsDrawerHeader(
                decoration:BoxDecoration(
                    color: kBottomContainerColor
                ),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage('https://avatars.githubusercontent.com/u/99549253?v=4'),
                )
                ,accountName: Text('Awais Naeem'), accountEmail: Text('iawaisnaeem@gmail.com')),
            ListTile(
                leading: const Icon(Icons.home),
                title: const Text('Dashboard'),
                onTap: (){ Navigator.push(context, MaterialPageRoute(builder: (context)=> HomeScreen()));}
            ),
            ListTile(
                leading: const Icon(Icons.account_box),
                title: const Text('Account'),
                onTap: (){ ;}
            ),
            ListTile(
                leading: const Icon(Icons.notes),
                title: const Text('Notes'),
                onTap: (){ ;}
            ),
            ListTile(
                leading: const Icon(Icons.query_stats),
                title: const Text('Stats'),
                onTap: (){ ;}
            ),
            ListTile(
                leading: const Icon(Icons.settings),
                title: const Text('Settings'),
                onTap: (){ ;}
            ),
            ListTile(
                leading: const Icon(Icons.privacy_tip),
                title: const Text('Privacy'),
                onTap: (){ ;}
            ),
            ListTile(
                leading: const Icon(Icons.help),
                title: const Text('Help'),
                onTap: (){ ;}
            ),
            ListTile(
                leading: const Icon(Icons.star_rate),
                title: const Text('Rate Us'),
                onTap: (){ ;}
            ),
            ListTile(
                leading: const Icon(Icons.logout),
                title: const Text('Log out'),
                onTap: (){ 
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> LoginScreen()));}
            ),
          ],
        ),
      ),
      body:  Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 10,),
            ReuseableCard(colour: kBottomContainerColor,
                cardChild: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Container(
                      height: 40, width: 250,
                      child: Center(child: Text('Body Mass Index', style: TextStyle(
                        fontSize: 30
                      ),))),
                ),
                onPress: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> InputData()));
                }),
            ReuseableCard(colour: kBottomContainerColor,
                cardChild: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Container(
                      height: 40, width: 250,
                      child: Center(child: Text('Blood Pressure', style: TextStyle(
                          fontSize: 30
                      ),))),
                ),
                onPress: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> InputData()));
                }),
            ReuseableCard(colour: kBottomContainerColor,
                cardChild: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Container(
                      height: 40, width: 250,
                      child: Center(child: Text('Sugar', style: TextStyle(
                          fontSize: 30
                      ),))),
                ),
                onPress: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> InputData()));
                }),
            ReuseableCard(colour: kBottomContainerColor,
                cardChild: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Container(
                      height: 40, width: 250,
                      child: Center(child: Text('Temperature', style: TextStyle(
                          fontSize: 30
                      ),))),
                ),
                onPress: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> InputData()));
                }),
            SizedBox(height: 10,),



          ],
        ),
      )


    );
  }
}
