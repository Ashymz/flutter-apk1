import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(
      home: MyCard(),
      debugShowCheckedModeBanner: false,
    ));

class MyCard extends StatefulWidget {
  const MyCard({super.key});

  @override
  State<MyCard> createState() => _MyCardState();
}

class _MyCardState extends State<MyCard> {
  int mylevel = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: const Text('Ashymz ID Card'),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
        elevation: 0,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            mylevel++;
            if (mylevel <= 10) {
              print('Whoopsie!');
            } else {
              mylevel = 0;
            }
          });
        },
        backgroundColor: Colors.blue[700],
        child: const Icon(Icons.add),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Center(
              child: CircleAvatar(
                backgroundImage: NetworkImage('assets/avatar-1.png'),
                radius: 70.0,
              ),
            ),
            Divider(
              height: 90.0,
              color: Colors.grey[800],
            ),
            Text(
              "NAME",
              style: TextStyle(
                color: Colors.blue[700],
                letterSpacing: 2.0,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "Ashymz",
              style: TextStyle(
                color: Colors.blue,
                letterSpacing: 2.0,
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 30.0,
            ),
            Text(
              "Current Level",
              style: TextStyle(
                color: Colors.blue[700],
                letterSpacing: 2.0,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              "$mylevel",
              style: const TextStyle(
                color: Colors.blue,
                letterSpacing: 2.0,
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 30.0,
            ),
            Row(
              children: <Widget>[
                const Icon(
                  Icons.email,
                  color: Colors.grey,
                ),
                const SizedBox(
                  width: 30,
                ),
                Text(
                  'ashymz@gmail.com',
                  style: TextStyle(
                    letterSpacing: 1.0,
                    color: Colors.blue[400],
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
