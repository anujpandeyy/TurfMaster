import 'package:flutter/material.dart';
import 'package:turf_app/views/home_page.dart';
import 'package:turf_app/views/register_page.dart';
import 'package:turf_app/widgets/button.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});
  @override
  Widget build(BuildContext context) {
    return (
      Scaffold(
      appBar: AppBar(
        title: Text('TurfMaster', style: TextStyle(color: Colors.grey)),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 30, top: 50),
              child: Text(
                'Hello',
                style: TextStyle(fontSize: 60, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 30),
              child: Text(
                'Welcome Back!',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.w300),
              ),
            ),
            SizedBox(height: 60),
            Padding(
              padding: EdgeInsets.only(left: 30, right: 20),
              child: TextField(
                decoration: InputDecoration(
                  labelText: 'Email',
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            SizedBox(height: 30),
            Padding(
              padding: EdgeInsets.only(left: 30, right: 20),
              child: TextField(
                decoration: InputDecoration(
                  labelText: 'Password',
                  border: OutlineInputBorder(),
                ),
                obscureText: true,
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 30, top: 10),
                  child: Text(
                    'Don\'t have an account?',
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 120, top: 10),
                  child: GestureDetector(
                    onTap:
                        () => {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => RegisterPage(),
                            ),
                          ),
                        },
                    child: Text(
                      'Register now.',
                      style: TextStyle(
                        color: Colors.amber,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.only(left: 30.0),
              child: Button(
                text: 'Login',
                onPressesd: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomePage()),
                  );
                },
                color: Colors.amber,
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
