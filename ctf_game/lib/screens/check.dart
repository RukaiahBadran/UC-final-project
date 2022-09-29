import 'package:ctf_game/screens/win_screen.dart';
import 'package:flutter/material.dart';

String pass = '123';
void main() => runApp(const Check());

class Check extends StatefulWidget {
  const Check({Key? key}) : super(key: key);

  @override
  _CheckState createState() => _CheckState();
}

class _CheckState extends State<Check> {
  final GlobalKey<FormState> _key = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xFFB18B8B),
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            'Check',
            style: TextStyle(fontFamily: 'Breaker', fontSize: 36),
          ),
          backgroundColor: Color(0xFFB18B8B),
        ),
        body: Form(
          key: _key,
          child: Column(
            children: [
              TextFormField(
                decoration: const InputDecoration(
                    labelText: 'CTF = 1', border: OutlineInputBorder()),
                validator: (value) {
                  if (value == null || value.isEmpty)
                    return 'Field is required.';
                  return null;
                }, // InputDecoration
              ),
              TextFormField(
                decoration: const InputDecoration(
                    labelText: 'CTF = 2', border: OutlineInputBorder()),
                validator: (value) {
                  if (value == null || value.isEmpty)
                    return 'Field is required.';
                  return null;
                }, // InputDecoration
              ),
              TextFormField(
                decoration: const InputDecoration(
                    labelText: 'CTF = 3', border: OutlineInputBorder()),
                validator: (value) {
                  if (value == null || value.isEmpty)
                    return 'Field is required.';
                  return null;
                }, // InputDecoration
              ),
              TextFormField(
                decoration: const InputDecoration(
                    labelText: 'CTF = 4', border: OutlineInputBorder()),
                validator: (value) {
                  if (value == null || value.isEmpty)
                    return 'Field is required.';
                  return null;
                }, // InputDecoration
              ),
              TextFormField(
                decoration: const InputDecoration(
                    labelText: 'CTF = 5', border: OutlineInputBorder()),
                validator: (value) {
                  if (value == null || value.isEmpty)
                    return 'Field is required.';
                  return null;
                }, // InputDecoration
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.save),
          onPressed: () {
            if (_key.currentState!.validate()) {
              _key.currentState!.save();
              print("form submitted.");
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return WinScreen();
              }));
            }
          },
        ),
      ),
    );
  }
}
