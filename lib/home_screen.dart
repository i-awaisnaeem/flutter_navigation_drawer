
import 'package:flutter/material.dart';
import 'screen_two.dart';


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
      appBar: AppBar(
        title: const Text('Navigation Drawer'),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children:  [
           const UserAccountsDrawerHeader(
            decoration:BoxDecoration(
              color: Color(0xff764abc)
            ),
            currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage('https://avatars.githubusercontent.com/u/99549253?v=4'),
            )
            ,accountName: Text('Awais Naeem'), accountEmail: Text('iawaisnaeem@gmail.com')),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text('Home'),
              onTap: (){ Navigator.pushNamed(context, HomeScreen.id);}
            ),
            ListTile(
                leading: const Icon(Icons.phone),
                title: const Text('Call logs'),
                onTap: (){ Navigator.pushNamed(context, ScreenTwo.id);}
            )
          ],
        ),
      ),
      body:  Center(
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextButton(
                onPressed: (){
               //  Navigator.push(
               //      context, MaterialPageRoute(builder: (context) =>  ScreenTwo()))
                 Navigator.pushNamed(context, ScreenTwo.id);
            }, child: const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.call),
                SizedBox(width: 10,),
                Text('Call Logs'),
              ],
            )),
          ],
        ),
      ),
    );
  }
}
