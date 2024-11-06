// ignore_for_file: avoid_unnecessary_containers

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

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
  File? _image;

  Future<void> _pickImage() async {
    final pickedFile =
        await ImagePicker().pickImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      setState(() {
        _image = File(pickedFile.path);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Sign in"),
          backgroundColor: Colors.blue,
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              DrawerHeader(
                child: Column(
                  children: [
                    Row(
                      children: [
                        GestureDetector(
                          onTap: _pickImage,
                          child: CircleAvatar(
                            radius: 30,
                            backgroundImage: _image != null
                                ? FileImage(_image!)
                                : const NetworkImage(
                                        'https://via.placeholder.com/150')
                                    as ImageProvider,
                          ),
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        const Text('Mohamed Sami Bakir'),
                      ],
                    ),
                    const Text('someemail@gmail.com'),
                  ],
                ),
              ),
              const ListTile(
                leading: Icon(Icons.home_outlined),
                title: Text('Home Page'),
              ),
              const ListTile(
                leading: Icon(Icons.access_alarm),
                title: Text('Set Alarm'),
              ),
              const ListTile(
                leading: Icon(Icons.logout),
                title: Text('Logout'),
              ),
            ],
          ),
        ),
        body: Container(
          child: Column(
            children: <Widget>[
              const Icon(
                Icons.abc_sharp,
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
                      setState(
                        () {
                          _isObscure = !_isObscure;
                        },
                      );
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
