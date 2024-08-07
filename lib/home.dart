import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:todoapp/common/show_model.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
        title: ListTile(
          leading: CircleAvatar(
            child: ClipOval(
              child: Image.asset(
                'assets/Rivael.png',
                width: 40,
                height: 40,
                fit: BoxFit.cover,
              ),
            ),
          ),
          title: Text(
            'Helo I\'m',
            style: TextStyle(fontSize: 12, color: Colors.grey.shade400),
          ),
          subtitle: const Text(
            'Rivael Manurung',
            style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(CupertinoIcons.calendar),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(CupertinoIcons.bell),
                ),
              ],
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Column(children: [
              const Gap(20),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Today\'s Task',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      'Wednesday, 25 March 2022',
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFFD5E8FA),
                      foregroundColor: Colors.blue.shade400,
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8))),
                  onPressed: () => showModalBottomSheet(
                    isScrollControlled: true,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16)),
                    context: context,
                    builder: (context) => AddNewTaskModel(),
                  ),
                  child: const Text(
                    '+ New Task',
                  ),
                ),
              ]),
            ])),
      ),
    );
  }
}

