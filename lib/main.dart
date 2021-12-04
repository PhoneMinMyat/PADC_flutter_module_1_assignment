import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(14, 22, 30, 1.0),
      appBar: AppBar(
        centerTitle: true,
        leadingWidth: 90,
        backgroundColor: const Color.fromRGBO(14, 22, 30, 1.0),
        leading: TextButton(
          child: const Text(
            'Back',
            style: TextStyle(
                fontSize: 20,
                color: Color.fromRGBO(0, 168, 225, 1),
                fontWeight: FontWeight.w400),
          ),
          onPressed: () => print('Click Back'),
        ),
        title: Image.asset(
          'assets/images/Prime_Video_Logo.png',
          width: 60,
        ),
        actions: [
          IconButton(
            onPressed: () => print('Click Refresh Icon'),
            icon: const Icon(
              Icons.replay,
              size: 30,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Text(
                'Create account',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 35,
                    color: Colors.white),
              ),
              const SizedBox(
                height: 15,
              ),
              const TextField(
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  hintText: 'Name',
                  hintStyle: TextStyle(
                    color: Color.fromRGBO(66, 81, 101, 1),
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              const TextField(
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  hintText: 'Your email address',
                  hintStyle: TextStyle(
                    color: Color.fromRGBO(66, 81, 101, 1),
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              const TextField(
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  hintText: 'Create a password',
                  hintStyle: TextStyle(
                    color: Color.fromRGBO(66, 81, 101, 1),
                  ),
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              Row(
                children: const [
                  Icon(
                    Icons.info,
                    color: Color.fromRGBO(0, 168, 225, 1),
                  ),
                  Text(
                    'Passwords must be at least 6 characters',
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  )
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: const Color.fromRGBO(13, 121, 175, 1),
                    padding:
                        const EdgeInsets.symmetric(vertical: 15, horizontal: 30)),
                onPressed: () => print('Create'),
                child: const Text(
                  'Create your Amazon account',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              RichText(
                text: TextSpan(style: const TextStyle(fontSize: 14), children: [
                  const TextSpan(
                      text: 'By creating an account, you agree to the '),
                  TextSpan(
                    text: 'Prime Video Terms of Use',
                    recognizer: TapGestureRecognizer()
                      ..onTap = () => print('Click Terms'),
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color.fromRGBO(13, 121, 175, 1),
                    ),
                  ),
                  const TextSpan(
                      text:
                          ' and license agreements which can be found on the Amazon website.')
                ]),
              ),
              const Padding(
                padding:  EdgeInsets.all(20.0),
                child:  Center(
                  
                  child:  Text(
                      'Already have an account?',
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                ),
              ),
               
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: const Color.fromRGBO(66, 81, 101, 1),
                    padding:
                        const EdgeInsets.symmetric(vertical: 15, horizontal: 30)),
                onPressed: () => print('Sign In'),
                child: const Text(
                  'Sign-In now',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                ),
              ),
              const SizedBox(
                height: 70,
              ),
              const Text(
                '©️ 1996-2021, Amazon.com, Inc. or its affiliates',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Color.fromRGBO(103, 122, 133, 1), fontSize: 14),
              )
            ],
          ),
        ),
      ),
    );
  }
}
