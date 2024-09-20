import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Practice extends StatefulWidget {
  const Practice({super.key});

  @override
  State<Practice> createState() => _PracticeState();
}

class _PracticeState extends State<Practice> {
  getuserpostapi() async {
    var url = Uri.parse("https://jsonplaceholder.typicode.com/users");
    var response = await http.get(url);
    print(response);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
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
