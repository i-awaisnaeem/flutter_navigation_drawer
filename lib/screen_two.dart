import 'package:flutter/material.dart';

class ScreenTwo extends StatefulWidget {
  static const String id = 'screen_two';

  const ScreenTwo({super.key});

  @override
  State<ScreenTwo> createState() => _ScreenTwpState();
}

class _ScreenTwpState extends State<ScreenTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Navigation Drawer',
         ),
      ),
      body:  Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(child: ListView.builder(
              itemCount: 30,
              itemBuilder: (context , index){
                return const ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage('https://avatars.githubusercontent.com/u/99549253?v=4'),
                  ),
                  title: Text('Awais Naeem'),
                  subtitle: Text('Missed voice call'),
                  trailing: Icon(Icons.phone_missed),
                );
              } ))
        ],
      ),
    );
  }
}
