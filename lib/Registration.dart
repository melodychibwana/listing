import 'package:flutter/material.dart';
import 'package:login/Login.dart';

class Registration extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 247, 213, 253), // Faded purple background color
      appBar: AppBar(
        title: Text('Registration'),
        backgroundColor: Color.fromARGB(255, 238, 213, 248), // Purple app bar color
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(
                Icons.person_add,
                size: 100.0,
                color: Color.fromARGB(255, 200, 176, 211), // Purple icon color
              ),
              SizedBox(height: 16.0),
              _buildTextField(Icons.person, 'Full Name', false),
              SizedBox(height: 16.0),
              _buildTextField(Icons.email, 'Email', false),
              SizedBox(height: 16.0),
              _buildTextField(Icons.lock, 'Password', true),
              SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: () {
                   Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Login()
                ),
                );
                      
                },
                child: Text('Register'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.purple[700], // Purple button color
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTextField(IconData icon, String labelText, bool obscureText) {
    return Container(
      width: 300.0, // Set the width of the text fields
      child: TextField(
        obscureText: obscureText,
        decoration: InputDecoration(
          labelText: labelText,
          prefixIcon: Icon(
            icon,
            color: Colors.purple[700], // Purple icon color
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30.0),
          ),
          filled: true,
          fillColor: Colors.white, // White text field background
        ),
      ),
    );
  }
}
