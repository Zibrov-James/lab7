import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(title: 'lab 7'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  double size = 0;
  double radius = 0;


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              width: size,
              height: size,
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(radius),
                  topRight: Radius.circular(radius),
                  bottomLeft: Radius.circular(radius),
                  bottomRight: Radius.circular(radius),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Text(size.round().toString()),
                    Slider(
                      value: size,
                      min: 0,
                      max: 100,
                      divisions: 100,
                      label: size.round().toString(),
                      onChanged: (value) {
                        setState(() {
                          size = value;
                        });
                      },
                    ),
                  ],
                ),
                Column(
                  children: [
                    Text(radius.round().toString()),
                    Slider(
                      value: radius,
                      min: 0,
                      max: 60,
                      divisions: 60,
                      label: radius.round().toString(),
                      onChanged: (value) {
                        setState(() {
                          radius = value;
                        });
                      },
                    )
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
