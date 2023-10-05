import 'package:flutter/material.dart';
import 'package:login/Github_Users.dart';

class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Landing Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(
              Icons.check_circle_outline,
              size: 100.0,
              color: Colors.green,
            ),
            SizedBox(height: 16.0),
            Text(
              'Login Successful!',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
                color: Colors.green, 
              ),
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Github_Users()
                  ),
                );
              },
              child: Text('Show Users'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green, 
              ),
            ),
          ],
        ),
      ),
    );
  }
}
