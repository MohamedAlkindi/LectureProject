import 'package:flutter/material.dart';

void main() {
  runApp(const StoreApp());
}

class StoreApp extends StatefulWidget {
  const StoreApp({Key? key}) : super(key: key);

  @override
  State<StoreApp> createState() => _StoreAppState();
}

class _StoreAppState extends State<StoreApp> {
  bool _isObscure = true;

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
              const Icon(
                Icons.store,
                size: 100,
              ),
              TextField(
                decoration: InputDecoration(
                  hintText: "Enter username",
                  hintStyle: const TextStyle(
                    fontSize: 25,
                    color: Colors.red,
                  ),
                  labelText: "Username",
                  labelStyle: const TextStyle(
                    fontSize: 25,
                    color: Colors.black,
                  ),
                  icon: const Icon(
                    Icons.person,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(40),
                    borderSide: const BorderSide(color: Colors.black, width: 5),
                  ),
                ),
                keyboardType: TextInputType.text,
              ),
              const SizedBox(height: 40),
              // TODO: HW Create a new project that has appbar login, Icon 2 textboxes.
              TextField(
                decoration: InputDecoration(
                  hintText: "Enter password",
                  hintStyle: const TextStyle(
                    fontSize: 25,
                    color: Colors.red,
                  ),
                  labelText: "Password",
                  labelStyle: const TextStyle(
                    fontSize: 25,
                    color: Colors.black,
                  ),
                  // prefixIcon:
                  icon: const Icon(
                    Icons.lock,
                  ),
                  suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        _isObscure = !_isObscure;
                      });
                    },
                    icon: Icon(
                      (_isObscure) == true
                          ? Icons.visibility
                          : Icons.visibility_off,
                    ),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(40),
                    borderSide: const BorderSide(
                      color: Colors.black,
                      width: 5,
                    ),
                  ),
                ),
                keyboardType: TextInputType.visiblePassword,
                obscureText: _isObscure,
              ),
              const SizedBox(
                height: 40,
              ),
              TextField(
                decoration: InputDecoration(
                  hintText: "Enter Email",
                  hintStyle: const TextStyle(
                    fontSize: 25,
                    color: Colors.red,
                  ),
                  labelText: "Email",
                  labelStyle: const TextStyle(
                    fontSize: 25,
                    color: Colors.black,
                  ),
                  icon: const Icon(
                    Icons.email,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(40),
                    borderSide: const BorderSide(
                      color: Colors.black,
                      width: 5,
                    ),
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
                  hintStyle: const TextStyle(
                    fontSize: 25,
                    color: Colors.red,
                  ),
                  labelText: "Phone number",
                  labelStyle: const TextStyle(
                    fontSize: 25,
                    color: Colors.black,
                  ),
                  icon: const Icon(
                    Icons.phone,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(40),
                    borderSide: const BorderSide(
                      color: Colors.black,
                      width: 5,
                    ),
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
