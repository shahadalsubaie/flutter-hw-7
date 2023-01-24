import 'package:flutter/material.dart';

import 'HomePage.dart';
import 'Search.dart';

class Account extends StatelessWidget {
  const Account({super.key});

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
                  MaterialPageRoute(builder: (context) => const Search()),
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
                      MaterialPageRoute(builder: (context) => const HomePage()),
                    );
                  },
                  child: const Icon(Icons.arrow_forward_ios_rounded, color: Color.fromARGB(255, 95, 94, 94))),
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 80),
            child: SizedBox(
                height: 150,
                width: 400,
                child: Image(
                    image: NetworkImage(
                  'https://media.istockphoto.com/id/637909890/photo/smiling-beautiful-girl-portrait.jpg?s=612x612&w=0&k=20&c=8dG2J8o12EtPudLaFnCFaDthSvXvcpCQhg09Sm5oPbo=',
                ))),
          ),
          const Text(
            'Emma Mobbin',
            style: TextStyle(fontSize: 20),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 30),
            child: Container(
              decoration: const BoxDecoration(
                  gradient: LinearGradient(colors: [Colors.grey, Colors.white]),
                  color: Color.fromARGB(255, 249, 246, 246),
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(0, 10),
                      blurRadius: 60,
                      color: Colors.black,
                    )
                  ]),
              height: 400,
              width: 400,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 15,
                      top: 15,
                      right: 8,
                    ),
                    child: Expanded(
                      child: Row(
                        children: [
                          Expanded(
                            flex: 2,
                            child: Row(
                              children: const [
                                Icon(
                                  Icons.add_task,
                                  size: 25,
                                  color: Colors.grey,
                                ),
                                Text('List'),
                              ],
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Row(
                              children: const [
                                Icon(
                                  Icons.add_task,
                                  size: 25,
                                  color: Colors.grey,
                                ),
                                Text('List')
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const Divider(
                    color: Color.fromARGB(255, 2, 2, 2),
                    indent: 40,
                    endIndent: 40,
                    height: 40,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 15,
                      top: 15,
                      right: 8,
                    ),
                    child: Row(
                      children: const [
                        Icon(
                          Icons.contact_mail,
                          size: 25,
                          color: Colors.grey,
                        ),
                        Text('board')
                      ],
                    ),
                  ),
                  const Divider(
                    color: Color.fromARGB(255, 2, 2, 2),
                    indent: 40,
                    endIndent: 40,
                    height: 40,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 15,
                      top: 15,
                      right: 8,
                    ),
                    child: Row(
                      children: const [
                        Icon(
                          Icons.manage_accounts_sharp,
                          size: 25,
                          color: Colors.grey,
                        ),
                        Text('calender')
                      ],
                    ),
                  ),
                  const Divider(
                    color: Color.fromARGB(255, 2, 2, 2),
                    indent: 40,
                    endIndent: 40,
                    height: 40,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 15,
                      top: 15,
                      right: 8,
                    ),
                    child: Row(
                      children: const [
                        Icon(
                          Icons.list_rounded,
                          size: 25,
                          color: Colors.grey,
                        ),
                        Text('Profile')
                      ],
                    ),
                  ),
                  const Divider(
                    color: Color.fromARGB(255, 2, 2, 2),
                    indent: 40,
                    endIndent: 40,
                    height: 40,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 15,
                      top: 15,
                      right: 8,
                    ),
                    child: Row(
                      children: const [
                        Icon(
                          Icons.message_rounded,
                          size: 25,
                          color: Colors.grey,
                        ),
                        Text('Account')
                      ],
                    ),
                  ),
                  const Divider(
                    color: Color.fromARGB(255, 2, 2, 2),
                    indent: 40,
                    endIndent: 40,
                    height: 40,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
