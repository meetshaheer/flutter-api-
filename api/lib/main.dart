import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main(List<String> args) {
  runApp(MyWidget());
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: api(),
    );
  }
}

class api extends StatefulWidget {
  const api({super.key});

  @override
  State<api> createState() => _apiState();
}

class _apiState extends State<api> {
  getuserpostapi() async {
    // var url = Uri.parse("https://jsonplaceholder.typicode.com/posts");
    var url = Uri.https("jsonplaceholder.typicode.com", "posts");
    var response = await http.get(url);
    var myresponse = jsonDecode(response.body);
    print(myresponse[0]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              getuserpostapi();
            },
            child: Text("Show")),
      ),
    );
  }
}
