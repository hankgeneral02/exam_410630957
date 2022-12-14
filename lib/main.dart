import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: Text('410630957 exam')),
        ),
        body: HomePage(),
      ),
    );
  }
}

class HomePage extends StatelessWidget {

  get i => 3;


  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      child: Column(
        children: [

          ElevatedButton(
            style: ElevatedButton.styleFrom(primary: Colors.white),

            child: Image.asset('assets/images/$i.jpg', height: 300,),
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text('410630957姜君翰 pass'),
                  action: SnackBarAction(
                    label: 'action',
                    onPressed: () {},
                  ),
                ),
              );
            },
          ),
          SizedBox(
            height: 100,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              ElevatedButton(
                  child: Text('上一張'),
                  onPressed: () {

                  }
              ),
              ElevatedButton(
                child: Text('下一張'),
                onPressed: () {

                },
              )
            ],
          )
        ],
      ),
    );
  }

