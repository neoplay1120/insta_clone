import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Insta clone',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HelloPage(),
    );
  }
}

class HelloPage extends StatefulWidget {
  @override
  _HelloPageState createState() => _HelloPageState();
}

class _HelloPageState extends State<HelloPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('인스타클론'),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.add_alert),
            tooltip: 'Show Snackbar',
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('This is a snackbar')));
            },
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              children: [
                SizedBox(
                  width: 80.0,
                  height: 80.0,
                  child: CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://cdn.pixabay.com/photo/2021/09/13/05/34/kid-6620283_960_720.jpg'),
                  ),
                ),
                Container(
                  width: 80.0,
                  height: 80.0,
                  alignment: Alignment.bottomRight,
                  child: SizedBox(
                    width: 25.0,
                    height: 25.0,
                    child: FloatingActionButton(
                      onPressed: null,
                      child: Icon(Icons.add),
                    ),
                  ),
                ),
                Container(
                  width: 80.0,
                  height: 80.0,
                  alignment: Alignment.bottomLeft,
                  child: SizedBox(
                    width: 25.0,
                    height: 25.0,
                    child: FloatingActionButton(
                      onPressed: () {},
                      child: Icon(Icons.add_ic_call_sharp),
                    ),
                  ),
                )
              ],
            ),
            Text(
              '본인이름',
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
