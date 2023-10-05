import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;//importing something from the API
import 'dart:convert';



class Github_Users extends StatelessWidget {
  const Github_Users({super.key});

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Users',
      theme: ThemeData(
        colorScheme:
            ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 180, 158, 222)),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: ' Users '),
      debugShowCheckedModeBanner: false,
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
  //
  Future<List<dynamic>> getUsers() async {
    final response =
        await http.get(Uri.parse("https://api.github.com/users?since=2023"));
    if (response.statusCode == 200) {
      final data = response.body;
      final body = json.decode(data);// DATA IS CONVERTED FROM THIS FILE THAT WHY WE HAVE THE DART CONVERT
      return body;
    } else {
      throw Exception("Failed to get users from github");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: FutureBuilder<List<dynamic>>(
        future: getUsers(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          if (snapshot.hasError) {
            return const Center(
              child: Text("There is an Error"),
            );
          }

          if (snapshot.hasData) {
            final userData = snapshot.data as List<dynamic>;
            return ListView.builder(
                itemCount: userData.length,
                itemBuilder: (context, index) {
                  final users = userData[index];
                  return Padding(
                    padding: const EdgeInsets.all(7.0),
                    child: ListTile(
                      leading: Text(
                        "${users['id']}",
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                        ),
                      ),
                      tileColor: Color.fromARGB(255, 148, 143, 204),
                      title: Text(
                        "${users['login']}",
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      subtitle: Text(
                        "${users['url']}",
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                        ),
                      ),
                    ),
                  );
                });
          } else {
            return const Center(
              child: Text("There is no data available"),
            );
          }
        },
      ),
    );
  }
}
