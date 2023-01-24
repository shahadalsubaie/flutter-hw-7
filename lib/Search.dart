import 'package:flutter/material.dart';

import 'Account.dart';
import 'Inbox.dart';

class Search extends StatelessWidget {
  const Search({super.key});

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
                  MaterialPageRoute(builder: (context) => const Inbox()),
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
                      MaterialPageRoute(builder: (context) => const Account()),
                    );
                  },
                  child: const Icon(Icons.arrow_forward_ios_rounded, color: Color.fromARGB(255, 95, 94, 94))),
            ),
          ],
        ),
      ),
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 100),
            child:
                Container(child: Center(child: Image.asset('/Users/shahadalsubaie/flutter2/hw_7/lib/assets/Box.png'))),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 150),
                child: Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 25),
                      child: Container(
                        clipBehavior: Clip.hardEdge,
                        width: 45,
                        height: 45,
                        decoration: const BoxDecoration(
                          color: Color.fromARGB(255, 201, 65, 65),
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                        ),
                        child: const Image(
                            image: NetworkImage(
                              'https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
                            ),
                            height: 45,
                            width: 45,
                            fit: BoxFit.cover),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 50),
                      child: Container(
                        clipBehavior: Clip.hardEdge,
                        width: 45,
                        height: 45,
                        decoration: const BoxDecoration(
                          color: Color.fromARGB(255, 201, 65, 65),
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                        ),
                        child: const Image(
                            image: NetworkImage(
                              'https://images.herzindagi.info/image/2022/Sep/post-office-schemes-for-girl-children.jpg',
                            ),
                            height: 45,
                            width: 45,
                            fit: BoxFit.cover),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 70),
                      child: Container(
                        clipBehavior: Clip.hardEdge,
                        width: 45,
                        height: 45,
                        decoration: const BoxDecoration(
                          color: Color.fromARGB(255, 201, 65, 65),
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                        ),
                        child: const Image(
                            image: NetworkImage(
                              'https://www.shutterstock.com/image-photo/closeup-portrait-her-she-nice-260nw-1810907647.jpg',
                            ),
                            height: 45,
                            width: 45,
                            fit: BoxFit.cover),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15, left: 30, right: 30),
            child: Expanded(
              child: Container(
                decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 232, 229, 229), borderRadius: BorderRadius.all(Radius.circular(20))),
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
                      child: Row(
                        children: const [
                          Icon(
                            Icons.add_task,
                            size: 25,
                            color: Colors.grey,
                          ),
                          Text('Add')
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
                            Icons.contact_mail,
                            size: 25,
                            color: Colors.grey,
                          ),
                          Text('Contacts')
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
                          Text('Manage Contact')
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
                          Text('List')
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
                          Text('Messages')
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
          ),
        ],
      ),
    );
  }
}
