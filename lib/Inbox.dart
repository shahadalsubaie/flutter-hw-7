import 'package:flutter/material.dart';

import 'MyTask.dart';
import 'Search.dart';

class Inbox extends StatefulWidget {
  const Inbox({super.key});

  @override
  State<Inbox> createState() => _InboxState();
}

class _InboxState extends State<Inbox> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Row(
          children: [
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const MyTask()),
                );
              },
              child: const Icon(
                Icons.arrow_back_ios_new_rounded,
                color: Color.fromARGB(255, 91, 90, 90),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 200),
              child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Search()),
                    );
                  },
                  child: const Icon(Icons.arrow_forward_ios_rounded, color: Color.fromARGB(255, 95, 94, 94))),
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Row(
            children: const [
              Text(
                'Inbox',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600),
              ),
              Divider(
                color: Color.fromARGB(255, 2, 2, 2),
                indent: 40,
                endIndent: 40,
                height: 40,
              )
            ],
          ),
          Expanded(
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                      height: 35,
                      width: 80,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30), color: const Color.fromARGB(255, 184, 181, 181)),
                      child: const Padding(
                        padding: EdgeInsets.all(10),
                        child: Text(
                          'Expand',
                          style: TextStyle(fontSize: 16),
                        ),
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Container(
                      height: 35,
                      width: 80,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30), color: const Color.fromARGB(255, 184, 181, 181)),
                      child: const Padding(
                        padding: EdgeInsets.only(left: 30, top: 8, right: 8, bottom: 8),
                        child: Text(
                          'All',
                          style: TextStyle(fontSize: 16),
                        ),
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                      height: 35,
                      width: 140,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30), color: const Color.fromARGB(255, 184, 181, 181)),
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          'Assigned to me ',
                          style: TextStyle(fontSize: 16),
                        ),
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                      height: 35,
                      width: 140,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30), color: const Color.fromARGB(255, 184, 181, 181)),
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          '@ Mentioned ',
                          style: TextStyle(fontSize: 16),
                        ),
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                      height: 35,
                      width: 140,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30), color: const Color.fromARGB(255, 184, 181, 181)),
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          'Assigned to me ',
                          style: TextStyle(fontSize: 16),
                        ),
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                      height: 35,
                      width: 140,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30), color: const Color.fromARGB(255, 184, 181, 181)),
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          'Sort the Inbox ',
                          style: TextStyle(fontSize: 16),
                        ),
                      )),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 130),
            child: Container(child: Image.asset('/Users/shahadalsubaie/flutter2/hw_7/lib/assets/log.png')),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 360, top: 170),
            child: Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30), color: const Color.fromARGB(255, 225, 118, 118)),
              child: const Icon(
                Icons.add_rounded,
                size: 30,
                color: Color.fromARGB(255, 255, 255, 255),
              ),
            ),
          )
        ],
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
