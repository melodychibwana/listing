import 'package:flutter/material.dart';

class Forgot_Password extends StatelessWidget {
  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Forgot Password'),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(
                Icons.lock_outline,
                size: 100.0,
                color: Colors.purple[700],
              ),
              SizedBox(height: 16.0),
              Text(
                'Enter your email to reset your password',
                style: TextStyle(fontSize: 18.0),
              ),
              SizedBox(height: 16.0),
              _buildTextField(Icons.email, 'Email'),
              SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: () {
                 
                },
                child: Text('Send Link to Reset Password'),
                style: ElevatedButton.styleFrom(
                  primary: Colors.purple[700], 
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTextField(IconData icon, String labelText) {
    return Container(
      width: 300.0,
      child: TextField(
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
