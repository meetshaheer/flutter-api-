import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Practice extends StatefulWidget {
  const Practice({super.key});

  @override
  State<Practice> createState() => _PracticeState();
}

class _PracticeState extends State<Practice> {
  // getuserpostapi() async {
  //   var url = Uri.parse("https://jsonplaceholder.typicode.com/posts");
  //   var response = await http.get(url);
  //   var responsebody = jsonDecode(response.body);
  //   return responsebody;
  // }

  getuserAPI() async {
    var url = Uri.parse("https://jsonplaceholder.typicode.com/posts");
    var response = await http.get(url);
    var responsebody = jsonDecode(response.body);
    return responsebody;
  }

  @override
  // void initState() {
  //   // TODO: implement initState
  //   getuserpostapi();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber[50],
      resizeToAvoidBottomInset: false,
      body: FutureBuilder(
        future: getuserAPI(),
        builder: (context, AsyncSnapshot snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(
              itemCount: snapshot.data.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(snapshot.data[index]['title']),
                  subtitle: Text(snapshot.data[index]['userId'].toString()),
                );
              },
            );
          }
          return Center(child: const CircularProgressIndicator());
        },
      ),
    );
  }
}
