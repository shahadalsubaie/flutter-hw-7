import 'package:flutter/material.dart';

import 'HomePage.dart';
import 'Inbox.dart';

class MyTask extends StatefulWidget {
  const MyTask({super.key});

  @override
  State<MyTask> createState() => _MyTaskState();
}

class _MyTaskState extends State<MyTask> {
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
                  MaterialPageRoute(builder: (context) => const HomePage()),
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
                      MaterialPageRoute(builder: (context) => const Inbox()),
                    );
                  },
                  child: const Icon(Icons.arrow_forward_ios_rounded, color: Color.fromARGB(255, 95, 94, 94))),
            ),
          ],
        ),
      ),
      backgroundColor: const Color.fromARGB(255, 239, 238, 232),
      body: Column(
        children: [
          Container(
            color: Colors.white,
            child: SizedBox(
                height: 80,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Container(
                        clipBehavior: Clip.hardEdge,
                        width: 40,
                        height: 40,
                        decoration: const BoxDecoration(
                          color: Color.fromARGB(255, 106, 65, 201),
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                        ),
                        child: const Image(
                            image: NetworkImage(
                              'https://www.shutterstock.com/image-photo/closeup-portrait-her-she-nice-260nw-1810907647.jpg',
                            ),
                            height: 40,
                            width: 40,
                            fit: BoxFit.cover),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20, left: 12),
                      child: Column(
                        children: [
                          const Text(
                            'My Task',
                            style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
                          ),
                          Row(
                            children: const [
                              Text(
                                'Board',
                                style: TextStyle(color: Colors.grey),
                              ),
                              Icon(
                                Icons.arrow_drop_down_rounded,
                                color: Colors.grey,
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 250),
                      child: Icon(
                        Icons.align_vertical_center_sharp,
                        color: Colors.grey,
                      ),
                    )
                  ],
                )),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 40, top: 25),
            child: Row(children: const [
              Text(
                'Recently assigned',
                style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.w500),
              ),
              Icon(
                Icons.arrow_drop_down_rounded,
                color: Colors.grey,
                size: 50,
              )
            ]),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15, left: 30, right: 30),
            child: Expanded(
              child: Container(
                decoration:
                    const BoxDecoration(color: Colors.white, borderRadius: BorderRadius.all(Radius.circular(20))),
                height: 60,
                width: 400,
                child: const Icon(
                  Icons.add_rounded,
                  size: 40,
                  color: Colors.grey,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15, left: 30, right: 30),
            child: Expanded(
              child: Container(
                decoration:
                    const BoxDecoration(color: Colors.white, borderRadius: BorderRadius.all(Radius.circular(20))),
                height: 100,
                width: 400,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 15, top: 15, right: 8, bottom: 20),
                      child: Row(
                        children: const [
                          Icon(
                            Icons.add_task,
                            size: 25,
                            color: Colors.grey,
                          ),
                          Text('Publish')
                        ],
                      ),
                    ),
                    Row(
                      children: const [
                        Padding(
                          padding: EdgeInsets.only(left: 15),
                          child: Text(
                            'Tuseday',
                            style: TextStyle(fontWeight: FontWeight.w500),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15, left: 30, right: 30),
            child: Expanded(
              child: Container(
                decoration:
                    const BoxDecoration(color: Colors.white, borderRadius: BorderRadius.all(Radius.circular(20))),
                height: 100,
                width: 400,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 15, top: 15, right: 8, bottom: 20),
                      child: Row(
                        children: const [
                          Icon(
                            Icons.add_task,
                            size: 25,
                            color: Colors.grey,
                          ),
                          Text('Screenshot')
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(left: 15),
                          child: Text(
                            'Tomorrow',
                            style: TextStyle(fontWeight: FontWeight.w500, color: Colors.green),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 230),
                          child: Row(
                            children: const [
                              Text('1'),
                              Icon(
                                Icons.align_vertical_center_sharp,
                                color: Colors.grey,
                                size: 15,
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 360, top: 200),
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
