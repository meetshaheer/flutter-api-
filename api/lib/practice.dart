// // import 'dart:convert';

// // import 'package:flutter/material.dart';

import 'dart:convert';

import 'package:api/models/post_api.dart';
import 'package:api/models/post_model.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

//  https://jsonplaceholder.typicode.com/posts

// // class Practice extends StatefulWidget {
// //   const Practice({super.key});

// //   @override
// //   State<Practice> createState() => _PracticeState();
// // }

// // class _PracticeState extends State<Practice> {
// //   // getuserpostapi() async {
// //   //   var url = Uri.parse("https://jsonplaceholder.typicode.com/posts");
// //   //   var response = await http.get(url);
// //   //   var responsebody = jsonDecode(response.body);
// //   //   return responsebody;
// //   // }

// //   getuserAPI() async {
// //     var url = Uri.parse("https://jsonplaceholder.typicode.com/posts");
// //     var response = await http.get(url);
// //     var responsebody = jsonDecode(response.body);
// //     return responsebody;
// //   }

// //   @override
// //   // void initState() {
// //   //   // TODO: implement initState
// //   //   getuserpostapi();
// //   // }

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       backgroundColor: Colors.amber[50],
// //       resizeToAvoidBottomInset: false,
// //       body: FutureBuilder(
// //         future: getuserAPI(),
// //         builder: (context, AsyncSnapshot snapshot) {
// //           if (snapshot.hasData) {
// //             return ListView.builder(
// //               itemCount: snapshot.data.length,
// //               itemBuilder: (context, index) {
// //                 return ListTile(
// //                   title: Text(snapshot.data[index]['title']),
// //                   subtitle: Text(snapshot.data[index]['userId'].toString()),
// //                 );
// //               },
// //             );
// //           }
// //           return Center(child: const CircularProgressIndicator());
// //         },
// //       ),
// //     );
// //   }
// // }

// import 'package:flutter/material.dart';

// class Practice extends StatefulWidget {
//   const Practice({super.key});

//   @override
//   State<Practice> createState() => _PracticeState();
// }

// List _respose = [];

// class _PracticeState extends State<Practice> {
//   getuserAPI() async {
//     var url = Uri.parse("https://jsonplaceholder.typicode.com/posts");
//     var response = await http.get(url);
//     var responsebody = jsonDecode(response.body);
//     setState(() {
//       _respose = responsebody;
//     });
//   }

//   @override
//   void initState() {
//     // TODO: implement initState
//     getuserAPI();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: ListView.builder(
//           itemCount: _respose.length,
//           itemBuilder: (context, index) {
//             return ListTile(
//               title: Text(_respose[index]['title']),
//             );
//           }),
//     );
//   }
// // }
// class Practice extends StatefulWidget {
//   const Practice({super.key});

//   @override
//   State<Practice> createState() => _PracticeState();
// }

// class _PracticeState extends State<Practice> {
//   getuserpostAPI() async {
//     var url = Uri.parse("https://jsonplaceholder.typicode.com/posts");
//     var response = await http.get(url);
//     var myresponse = jsonDecode(response.body);
//     return myresponse;
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: FutureBuilder(
//           future: getuserpostAPI(),
//           builder: (context, AsyncSnapshot snapshot) {
//             if (snapshot.hasData) {
//               return ListView.builder(
//                   itemCount: snapshot.data.length,
//                   itemBuilder: (context, index) {
//                     var data = snapshot.data[index];
//                     return ListTile(
//                       title: Text(data['title']),
//                       subtitle: Container(
//                         width: 200,
//                         color: Colors.lightBlue,
//                         child: Text(
//                           data['id'].toString(),
//                         ),
//                       ),
//                       trailing: CircleAvatar(child: Text(data["userId"].toString())),
//                     );
//                   });
//             }
//             return Center(child: const CircularProgressIndicator());
//           }),
//     );
//   }
// }

// class Practice extends StatefulWidget {
//   const Practice({super.key});

//   @override
//   State<Practice> createState() => _PracticeState();
// }

// List<PostModel> responseData = [];

// class _PracticeState extends State<Practice> {
//   Future<List<PostModel>> getpostAPI() async {
//     var url = Uri.parse("https://jsonplaceholder.typicode.com/posts/");
//     var response = await http.get(url);
//     var responsebody = jsonDecode(response.body);

//     for (var eachMap in responsebody) {
//       responseData.add(PostModel.fromJson(eachMap));
//     }
//     return responseData;
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: FutureBuilder(
//           future: getpostAPI(),
//           builder: (context, snapshot) {
//             if (snapshot.hasData) {
//               return ListTile(
//                 title: Text(snapshot.data?[0].userId.toString() ?? "No ID"),
//               );
//             } else {
//               return Center(child: const CircularProgressIndicator());
//             }
//           }),
//     );
//   }
// }

//Single Map from With Model Approach

// class Practice extends StatefulWidget {
//   const Practice({super.key});

//   @override
//   State<Practice> createState() => PracticeState();
// }

// class PracticeState extends State<Practice> {
//   Future<PostModel> getpostAPI() async {
//     var url = Uri.parse("https://jsonplaceholder.typicode.com/posts/1");
//     var response = await http.get(url);
//     var responsebody = jsonDecode(response.body);

//     return PostModel.fromJson(responsebody);
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: FutureBuilder(
//           future: getpostAPI(),
//           builder: (context, snapshot) {
//             if (snapshot.hasData) {
//               return ListTile(
//                 title: Text(snapshot.data?.id.toString() ?? "No ID"),
//                 subtitle: Text(snapshot.data?.title ?? "No Title"),
//               );
//             }
//             return const CircularProgressIndicator();
//           }),
//     );
//   }
// // }

// class Practice extends StatefulWidget {
//   const Practice({super.key});

//   @override
//   State<Practice> createState() => _PracticeState();
// }

// List<PostModel> responseData = [];

// class _PracticeState extends State<Practice> {
//   Future<List<PostModel>> getuserAPI() async {
//     var url = Uri.parse("https://jsonplaceholder.typicode.com/posts");
//     var response = await http.get(url);
//     var responsebody = jsonDecode(response.body);

//     for (var eachMap in responsebody) {
//       responseData.add(PostModel.fromJson(eachMap));
//     }

//     return responseData;
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: FutureBuilder(
//           future: getuserAPI(),
//           builder: (context, snapshot) {
//             if (snapshot.hasData) {
//               return ListView.builder(
//                   itemCount: responseData.length,
//                   itemBuilder: (context, index) {
//                     return ListTile(
//                       title: Text(snapshot.data?[index].title ?? "No Title"),
//                       subtitle: Text(responseData?[index].id.toString() ?? "No ID"),
//                     );
//                   });
//             } else {
//               return const Center(
//                 child: CircularProgressIndicator(),
//               );
//             }
//           }),
//     );
//   }
// }

// class Practice extends StatefulWidget {
//   const Practice({super.key});

//   @override
//   State<Practice> createState() => _PracticeState();
// }

// List _response = [];

// class _PracticeState extends State<Practice> {
//   getuserAPI() async {
//     var url = Uri.parse("https://jsonplaceholder.typicode.com/posts");
//     var response = await http.get(url);
//     var responsebody = jsonDecode(response.body);
//     return responsebody;
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         body: FutureBuilder(
//             future: getuserAPI(),
//             builder: (context, AsyncSnapshot snapshot) {
//               if (snapshot.hasData) {
//                 return ListView.builder(
//                     itemCount: snapshot.data.length,
//                     itemBuilder: (context, index) {
//                       return ListTile(
//                         title: Text(snapshot.data[index]['id'].toString()),
//                       );
//                     });
//               }
//               return Center(child: CircularProgressIndicator());
//             }));
//   }
// }

// class Practice extends StatefulWidget {
//   const Practice({super.key});

//   @override
//   State<Practice> createState() => _PracticeState();
// }

// List<PostModelApi> responseData = [];

// class _PracticeState extends State<Practice> {
//   Future<List<PostModelApi>> getuserAPI() async {
//     var url = Uri.parse("https://jsonplaceholder.typicode.com/posts");
//     var response = await http.get(url);
//     var responsebody = jsonDecode(response.body);

//     for (var eachMap in responsebody) {
//       responseData.add(PostModelApi.fromJson(eachMap));
//     }

//     return responseData;
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: FutureBuilder(
//           future: getuserAPI(),
//           builder: (context, snapshot) {
//             if (snapshot.hasData) {
//               return ListView.builder(
//                   itemCount: responseData.length,
//                   itemBuilder: (context, index) {
//                     return ListTile(
//                       title: Text(responseData[index].title ?? "No title"),
//                     );
//                   });
//             }
//             return Center(child: CircularProgressIndicator());
//           }),
//     );
//   }
// }

class Practice extends StatefulWidget {
  const Practice({super.key});

  @override
  State<Practice> createState() => _PracticeState();
}

List<PostModelApi> modelList = [];

class _PracticeState extends State<Practice> {
  Future<List<PostModelApi>> getAPI() async {
    var url = Uri.parse("https://jsonplaceholder.typicode.com/posts/");
    var response = await http.get(url);
    var responsebody = jsonDecode(response.body);

    for (var eachelement in responsebody) {
      modelList.add(PostModelApi.fromJson(eachelement));
    }

    return modelList;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
          future: getAPI(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return ListView.builder(
                  itemCount: modelList.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text(snapshot.data?[index].body ?? "dc"),
                    );
                  });
            }
            return CircularProgressIndicator();
          }),
    );
  }
}
