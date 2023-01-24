import 'package:flutter/material.dart';

import 'MyTask.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int index = 0;
  bool pass = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Expanded(
          child: Row(
            children: [
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const HomePage()),
                  );
                },
                child: const Icon(
                  Icons.arrow_back_ios_new_rounded,
                  color: Color.fromARGB(255, 91, 90, 90),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 270),
                child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => MyTask()),
                      );
                    },
                    child: const Icon(Icons.arrow_forward_ios_rounded, color: Color.fromARGB(255, 95, 94, 94))),
              ),
            ],
          ),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(100),
              child: Container(
                  child: const Image(
                      image: NetworkImage(
                          'https://upload.wikimedia.org/wikipedia/commons/thumb/3/3b/Asana_logo.svg/2560px-Asana_logo.svg.png'))),
            ),
            Padding(
              padding: const EdgeInsets.all(30),
              child: Column(
                children: [
                  Row(
                    children: const [
                      Text(
                        'Email',
                        style: TextStyle(fontSize: 20),
                      ),
                    ],
                  ),
                  const TextField(
                    decoration: InputDecoration(hintText: 'name@company.com'),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(30),
              child: Column(
                children: [
                  Row(
                    children: const [
                      Text(
                        'Password',
                        style: TextStyle(fontSize: 20),
                      ),
                    ],
                  ),
                  TextField(
                    obscureText: pass,
                    decoration: InputDecoration(
                        hintText: 'Password',
                        suffixIcon: IconButton(
                            onPressed: () {
                              setState(() {
                                pass = !pass;
                              });
                            },
                            icon: const Icon(Icons.remove_red_eye_outlined))),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20, bottom: 14),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF726ABF),
                      shape: const StadiumBorder(),
                      minimumSize: const Size(380, 55)),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => MyTask()),
                    );
                  },
                  child: const Text('Sign up', style: TextStyle(fontSize: 20))),
            ),
            TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MyTask()),
                  );
                },
                child: const Text(
                  'Log in',
                  style: TextStyle(fontSize: 20, color: Color(0xFF726ABF)),
                ))
          ],
        ),
      ),
      bottomNavigationBar: NavigationBarTheme(
        data: NavigationBarThemeData(labelTextStyle: MaterialStateProperty.all(const TextStyle(color: Colors.white))),
        child: NavigationBar(
          selectedIndex: index,
          onDestinationSelected: (index) => setState(() => this.index = index),
          height: 60,
          backgroundColor: Colors.black,
          destinations: const [
            NavigationDestination(
              icon: Icon(Icons.home, color: Colors.white),
              label: 'Home',
            ),
            NavigationDestination(
              icon: Icon(
                Icons.task,
                color: Colors.white,
              ),
              label: 'Task',
            ),
            NavigationDestination(icon: Icon(Icons.inbox, color: Colors.white), label: 'Inbox'),
            NavigationDestination(icon: Icon(Icons.search, color: Colors.white), label: 'Search'),
            NavigationDestination(icon: Icon(Icons.account_circle_outlined, color: Colors.white), label: 'Account')
          ],
        ),
      ),
    );
  }
}
