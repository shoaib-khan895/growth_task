import 'package:flutter/material.dart';

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
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            floating: true,
            expandedHeight: 200.0,
            flexibleSpace: FlexibleSpaceBar(
              title: const Text('Second Page'),
              background: Image.asset(
                'assets/bgappbar.jpeg',
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverList(
              delegate:
                  SliverChildBuilderDelegate((BuildContext context, int index) {
            return ListTile(
              title: Text('${1 + index}'),
            );
          }, childCount: 20)),
          SliverGrid(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
                childAspectRatio: 1.5),
            delegate:
                SliverChildBuilderDelegate((BuildContext context, int index) {
              return Container(
                margin: const EdgeInsets.symmetric(vertical: 1, horizontal: 1),
                color: const Color(0xFFFF9000),
                child: Center(
                  child: Text(
                    '${index + 1}',
                    textAlign: TextAlign.center,
                    style: const TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              );
            }, childCount: 12),
          )
        ],
      ),
    );
  }
}
