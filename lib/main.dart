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
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
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
      _counter++;
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
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const PageFirst()));
                },
                child: const Text('PageFirst')),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const PageSecond()));
                },
                child: const Text('PageSecond'))
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}

class PageFirst extends StatefulWidget {
  const PageFirst({super.key});

  @override
  State<PageFirst> createState() => _PageFirstState();
}

class _PageFirstState extends State<PageFirst> {
  @override
  void initState() {
    print('khansh->PageFirst->initState');
    super.initState();
  }

  @override
  void didChangeDependencies() {
    print('khansh->PageFirst->didChangeDependencies');
    super.didChangeDependencies();
  }

  @override
  void didUpdateWidget(covariant PageFirst oldWidget) {
    print('khansh->PageFirst->didUpdateWidget');
    super.didUpdateWidget(oldWidget);
  }

  @override
  void deactivate() {
    print('khansh->PageFirst->deactivate');
    super.deactivate();
  }

  @override
  void dispose() {
    print('khansh->PageFirst->dispose');
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    print('khansh->PageFirst->build');
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Page First'),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Page First',
            ),
          ],
        ),
      ),
    );
  }
}

class PageSecond extends StatefulWidget {
  const PageSecond({super.key});

  @override
  State<PageSecond> createState() => _PageSecondState();
}

class _PageSecondState extends State<PageSecond> {
  @override
  void initState() {
    print('khansh->PageSecond->initState');
    super.initState();
  }

  @override
  void didChangeDependencies() {
    print('khansh->PageSecond->didChangeDependencies');
    super.didChangeDependencies();
  }

  @override
  void didUpdateWidget(covariant PageSecond oldWidget) {
    print('khansh->PageSecond->didUpdateWidget');
    super.didUpdateWidget(oldWidget);
  }

  @override
  void deactivate() {
    print('khansh->PageSecond->deactivate');
    super.deactivate();
  }

  @override
  void dispose() {
    print('khansh->PageSecond->dispose');
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    print('khansh->PageSecond->build');
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Page Second'),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Page Second',
            ),
          ],
        ),
      ),
    );
  }
}
