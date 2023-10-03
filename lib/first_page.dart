import 'package:flutter/material.dart';

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

  final _formKey = GlobalKey<FormState>();
  String _data = '';

  @override
  Widget build(BuildContext context) {
    print('khansh->PageFirst->build');
    return MaterialApp(
      title: 'Page First',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('First Page'),
        ),
        body: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextFormField(
                // The validator receives the text that the user has entered.
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter some text';
                  }
                  return null;
                },
                onChanged: (value) {
                  _data = value;
                },
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16),
                child: ElevatedButton(
                  onPressed: () {
                    // Validate returns true if the form is valid, or false otherwise.
                    if (_formKey.currentState!.validate()) {
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: const Text('Processed Data'),
                            content: Text(_data),
                            actions: [
                              TextButton(
                                onPressed: () {
                                  // Close the alert dialog
                                  Navigator.of(context).pop();
                                },
                                child: const Text('OK'),
                              ),
                            ],
                          );
                        },
                      );
                    }
                  },
                  child: const Text('Submit'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
