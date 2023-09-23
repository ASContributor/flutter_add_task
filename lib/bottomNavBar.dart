import 'package:flutter/material.dart';
import 'package:flutter_add_task/Screen/myProjects.dart';
import 'package:flutter_add_task/Screen/dashboard.dart';

class bottomNavBar extends StatefulWidget {
  const bottomNavBar({super.key});

  @override
  State<bottomNavBar> createState() => _bottomNavBarState();
}

class _bottomNavBarState extends State<bottomNavBar> {
  Widget currentpage = dashboard();
  int currentActive = 0;
  PageStorageBucket bucket = PageStorageBucket();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
          color: Colors.white,
          child: Card(
            color: const Color.fromARGB(255, 25, 25, 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                    onPressed: () {
                      setState(() {
                        currentpage = dashboard();
                        currentActive = 0;
                      });
                    },
                    icon: Icon(
                      Icons.list,
                      color: currentActive == 0 ? Colors.orange : Colors.white,
                    )),
                Text(
                  '|',
                  style: TextStyle(color: Colors.grey),
                ),
                IconButton(
                    onPressed: () {
                      setState(() {
                        currentpage = dashboard();
                        currentActive = 1;
                      });
                    },
                    icon: Icon(
                      Icons.home,
                      color: currentActive == 1 ? Colors.orange : Colors.white,
                    )),
                IconButton(
                    onPressed: () {
                      setState(() {
                        currentpage = myProject();
                        currentActive = 2;
                      });
                    },
                    icon: Icon(
                      Icons.list,
                      color: currentActive == 2 ? Colors.orange : Colors.white,
                    )),
                IconButton(
                    onPressed: () {
                      setState(() {
                        currentActive = 3;
                      });
                    },
                    icon: Icon(
                      Icons.search,
                      color: currentActive == 3 ? Colors.orange : Colors.white,
                    )),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.blue,
                  ),
                  child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.add,
                        color: Colors.white,
                      )),
                ),
              ],
            ),
          )),
      body: PageStorage(bucket: bucket, child: currentpage),
    );
  }
}
