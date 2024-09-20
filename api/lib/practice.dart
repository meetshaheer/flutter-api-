import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Practice extends StatefulWidget {
  const Practice({super.key});

  @override
  State<Practice> createState() => _PracticeState();
}

List _myresponsedata = [];

class _PracticeState extends State<Practice> {
  getuserpostapi() async {
    var url = Uri.parse("https://jsonplaceholder.typicode.com/posts");
    var response = await http.get(url);

    var responsebody = jsonDecode(response.body);

    setState(() {
      _myresponsedata = responsebody;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    setState(() {
      getuserpostapi();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amberAccent[100],
      body: Center(
        child: ListView.builder(
            itemCount: _myresponsedata.length,
            itemBuilder: (context, index) {
              var data = _myresponsedata[index];
              return ListTile(
                title: Text(data['title']),
              );
            }),
      ),
    );
  }
}
