import 'package:flutter/material.dart';

import 'first_page.dart';
import 'second_page.dart';

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
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Growth Task'),
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
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      print('khansh->Main->setState');
      _counter++;
    });
  }

  void _decrementCounter() {
    setState(() {
      print('khansh->Main->setState');
      _counter--;
    });
  }

  void _resetCounter() {
    setState(() {
      print('khansh->Main->setState');
      _counter = 0;
    });
  }

  @override
  void initState() {
    print('khansh->Main->initState');
    super.initState();
  }

  @override
  void didChangeDependencies() {
    print('khansh->Main->didChangeDependencies');
    super.didChangeDependencies();
  }

  @override
  void didUpdateWidget(covariant MyHomePage oldWidget) {
    print('khansh->Main->didUpdateWidget');
    super.didUpdateWidget(oldWidget);
  }

  @override
  void deactivate() {
    print('khansh->Main->deactivate');
    super.deactivate();
  }

  @override
  void dispose() {
    print('khansh->Main->dispose');
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    print('khansh->Main->build');
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width / 2,
            child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const PageFirst()));
                },
                child: const Text('PageFirst')),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width / 2,
            child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const PageSecond()));
                },
                child: const Text('PageSecond')),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FloatingActionButton.small(
                    heroTag: '1',
                    onPressed: _incrementCounter,
                    child: const Icon(Icons.keyboard_double_arrow_up_sharp),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FloatingActionButton.small(
                    heroTag: '2',
                    onPressed: _resetCounter,
                    child: const Icon(Icons.restart_alt),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FloatingActionButton.small(
                    heroTag: '3',
                    onPressed: _decrementCounter,
                    child: const Icon(Icons.keyboard_double_arrow_down_sharp),
                  ),
                ],
              ),
            ],
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        heroTag: '4',
        splashColor: Colors.transparent,
        elevation: 0,
        backgroundColor: Colors.transparent,
        onPressed: () {},
        tooltip: 'Increment',
        child: Text(
          '$_counter',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
      ),
    );
  }
}
