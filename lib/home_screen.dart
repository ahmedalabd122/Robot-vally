import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

int i = 0;

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Robot Vally Demo',
      theme: ThemeData.dark(),
      home: MyHomePage(title: 'Robot Vally Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: <Widget>[
            Row(children: <Widget>[
              SizedBox(
                height: 10.0,
              ),
              Container(
                height: 30,
                margin: EdgeInsets.all(20),
                child: SvgPicture.asset(
                  'logo--light.svg',
                ),
              ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text('FAQ'),
                    SizedBox(
                      width: 10.0,
                    ),
                    Text('Contacts'),
                    SizedBox(
                      width: 10.0,
                    ),
                    FlatButton(
                        shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(30.0),
                        ),
                        color: Colors.blueAccent,
                        onPressed: () {
                          i++;
                        },
                        child: Text('Login with Robot Vally')),
                    SizedBox(
                      width: 30.0,
                    ),
                  ],
                ),
              )
            ]),
          ],
        ),
      ),
    );
  }
}
