import 'package:flutter/material.dart';

void main() {
  runApp(StoreApp());
}

class StoreApp extends StatefulWidget {
  const StoreApp({Key? key}) : super(key: key);

  @override
  State<StoreApp> createState() => _StoreAppState();
}

class _StoreAppState extends State<StoreApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Sign in"),
          backgroundColor: Colors.blue,
        ),
        body: Container(
          child: Column(
            children: <Widget>[
              Icon(
                Icons.store,
                size: 100,
              ),
              TextField(
                decoration: InputDecoration(
                  hintText: "Enter username",
                  hintStyle: TextStyle(
                    fontSize: 25,
                    color: Colors.red,
                  ),
                  labelText: "Username",
                  labelStyle: TextStyle(
                    fontSize: 25,
                    color: Colors.black,
                  ),
                  icon: const Icon(
                    Icons.person,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(40),
                    borderSide: BorderSide(color: Colors.black, width: 5),
                  ),
                ),
                keyboardType: TextInputType.text,
              ),
              const SizedBox(height: 40),
              // TODO: Put the icon inside the border.
              // TODO: Add functionality to hide and view password.
              // TODO: HW Create a new project that has appbar login, Icon 2 textboxes.
              TextField(
                decoration: InputDecoration(
                  hintText: "Enter password",
                  hintStyle: TextStyle(
                    fontSize: 25,
                    color: Colors.red,
                  ),
                  labelText: "Password",
                  labelStyle: TextStyle(
                    fontSize: 25,
                    color: Colors.black,
                  ),
                  // prefixIcon:
                  icon: const Icon(
                    Icons.lock,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(40),
                    borderSide: BorderSide(color: Colors.black, width: 5),
                  ),
                ),
                keyboardType: TextInputType.visiblePassword,
                obscureText: true,
              ),
              const SizedBox(
                height: 40,
              ),
              TextField(
                decoration: InputDecoration(
                  hintText: "Enter Email",
                  hintStyle: TextStyle(
                    fontSize: 25,
                    color: Colors.red,
                  ),
                  labelText: "Email",
                  labelStyle: TextStyle(
                    fontSize: 25,
                    color: Colors.black,
                  ),
                  icon: const Icon(
                    Icons.email,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(40),
                    borderSide: BorderSide(color: Colors.black, width: 5),
                  ),
                ),
                keyboardType: TextInputType.emailAddress,
              ),
              const SizedBox(
                height: 40,
              ),
              TextField(
                decoration: InputDecoration(
                  hintText: "Enter phone number",
                  hintStyle: TextStyle(
                    fontSize: 25,
                    color: Colors.red,
                  ),
                  labelText: "Phone number",
                  labelStyle: TextStyle(
                    fontSize: 25,
                    color: Colors.black,
                  ),
                  icon: const Icon(
                    Icons.phone,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(40),
                    borderSide: BorderSide(color: Colors.black, width: 5),
                  ),
                ),
                keyboardType: TextInputType.phone,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
