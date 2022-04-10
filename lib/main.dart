import 'package:flutter/material.dart';

void main() {
  runApp(const Home());
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "my profile",
        home: Scaffold(
          appBar: AppBar(
            title: const Text(
              "Profile",
              style: TextStyle(fontFamily: 'RobotoSlab', fontSize: 23),
            ),
            backgroundColor: Colors.indigo[800],
            leading: const Icon(Icons.clear_outlined),
            centerTitle: true,
          ),
          body: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              Container(
                alignment: Alignment.center,
                child: Stack(
                  alignment: const Alignment(0.9, 0.9),
                  children: [
                    Container(
                      child: const CircleAvatar(
                        backgroundImage: AssetImage('assets/image.jpg'),
                        radius: 70,
                      ),
                    ),
                    Container(
                      child: const Icon(
                        Icons.add_a_photo_outlined,
                        size: 25,
                      ),
                    ),
                  ],
                ),
              ),
              Text.rich(TextSpan(
                  text: "Personal ",
                  style: TextStyle(
                      color: Colors.indigo[800],
                      fontSize: 28,
                      fontFamily: 'RobotoSlab'),
                  children: [
                    TextSpan(
                      text: "Information",
                      style: TextStyle(
                          color: Colors.indigo[800],
                          fontSize: 28,
                          fontFamily: 'RobotoSlab'),
                    ),
                  ])),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const SizedBox(
                    height: 30,
                  ),
                  const ListTile(
                    title: Text(
                      'Name :  Mohamed Abdelaser',
                      style: TextStyle(
                        color: Colors.blueAccent,
                        fontFamily: 'RobotoSlab',
                        fontWeight: FontWeight.w100,
                      ),
                    ),
                    subtitle: Text('User name'),
                    leading: Icon(Icons.account_circle, size: 30),
                    trailing: Icon(Icons.arrow_forward_ios),
                  ),
                  const ListTile(
                    title: Text(
                      'Phone :  01097734714',
                      style: TextStyle(
                        color: Colors.blueAccent,
                        fontFamily: 'RobotoSlab',
                        fontWeight: FontWeight.w100,
                      ),
                    ),
                    subtitle: Text('User phone'),
                    leading: Icon(Icons.phone),
                    trailing: Icon(Icons.arrow_forward_ios),
                  ),
                  const ListTile(
                    title: Text(
                      'Email :  abonaser3401@gmail.com',
                      style: TextStyle(
                        color: Colors.blueAccent,
                        fontFamily: 'RobotoSlab',
                        fontWeight: FontWeight.w100,
                      ),
                    ),
                    subtitle: Text('User E-mail'),
                    leading: Icon(Icons.mail),
                    trailing: Icon(Icons.arrow_forward_ios),
                  ),
                  const ListTile(
                    title: Text(
                      'Age :  21',
                      style: TextStyle(
                        color: Colors.blueAccent,
                        fontFamily: 'RobotoSlab',
                        fontWeight: FontWeight.w100,
                      ),
                    ),
                    subtitle: Text('User age'),
                    leading: Icon(Icons.person),
                    trailing: Icon(Icons.arrow_forward_ios),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text('Update Profile'),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.indigo[800],
                      textStyle: const TextStyle(
                          fontSize: 20, fontWeight: FontWeight.bold),
                      shape: BeveledRectangleBorder(
                          borderRadius: BorderRadius.circular(8)),
                    ),
                  )
                ],
              )
            ],
          ),
        ));
  }
}
