import 'package:flutter/material.dart';
import 'SecondScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CounterApp(),
    );
  }
}

class CounterApp extends StatefulWidget {
  const CounterApp({super.key});

  @override
  State<CounterApp> createState() => _CounterAppState();
}

class _CounterAppState extends State<CounterApp> {
  MyAlertDialog(context) {
    return showDialog(
        context: context,
        builder: (context) {
          return Expanded(
              child: AlertDialog(
            title: Text("Counter value is 5!"),
          ));
        });
  }

  int count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Counter App"),
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Counter value:"),
              Text("$count"),
              SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: ElevatedButton(
                      onPressed: () {
                        count += 1;
                        setState(() {});
                        if (count == 5) {
                          MyAlertDialog(context);
                        }
                        if (count == 10) {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SecondScreen(count)));
                        }
                      },
                      child: Icon(
                        Icons.add,
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor:
                            Colors.green, // Set the button color here
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        count -= 1;
                        setState(() {});
                        if (count == 5) {
                          MyAlertDialog(context);
                        }
                      },
                      child: Icon(
                        Icons.remove,
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor:
                            Colors.red, // Set the button color here
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
