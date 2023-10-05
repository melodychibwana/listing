import 'package:flutter/material.dart';
import 'package:login/Registration.dart';
import 'package:login/LandingPage.dart';
// ignore: unused_import
import 'package:login/Forgot_Password.dart';



class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.purple[100],
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(
                  Icons.person,
                  size: 100.0,
                  color: Color.fromARGB(255, 45, 43, 46), 
                ),
                Text(
                  'Please sign in to continue',
                  style: TextStyle(fontSize: 18.0),
                ),
                SizedBox(height: 16.0),
                _buildTextField(Icons.email, 'Email', false),
                SizedBox(height: 16.0),
                _buildTextField(Icons.lock, 'Password', true),
                SizedBox(height: 16.0),
                ElevatedButton(
                  onPressed: () {
  
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LandingPage()
                  ),
                );
                  },
                  child: Text('Login'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 208, 134, 240), 
                  ),
                ),
                TextButton(
                  onPressed: () {
                    
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Forgot_Password()
                  ),
                );
                  },
                  child: Text('Forgot Password?'),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text("Don't have an account? "),
                    TextButton(
                      onPressed: () {
                       
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Registration()
                ),
                );
                      },
                      child: Text('Sign Up'),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildTextField(IconData icon, String labelText, bool obscureText) {
    return Container(
      width: 300.0,
      child: TextField(
        obscureText: obscureText,
        decoration: InputDecoration(
          labelText: labelText,
          prefixIcon: Icon(
            icon,
            color: Colors.purple[700],
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30.0),
          ),
          filled: true,
          fillColor: Colors.white, 
        ),
      ),
    );
  }
  
}