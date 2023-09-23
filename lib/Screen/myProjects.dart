import 'package:flutter/material.dart';

class myProject extends StatefulWidget {
  const myProject({super.key});

  @override
  State<myProject> createState() => _myProjectState();
}

class _myProjectState extends State<myProject> {
  int currentActive = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 10,
              ),
              Text(
                'Projects',
                style: TextStyle(fontSize: 25),
              ),
              Text(
                'CreoTeam',
                style: TextStyle(color: Colors.grey, fontSize: 20),
              )
            ],
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: Image.asset('assets/man.jpeg')),
            ),
          ]),
      body: Padding(
        padding: const EdgeInsets.only(left: 8, right: 8),
        child: ListView(children: [
          SizedBox(
            height: 40,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                child: Row(
                  children: [
                    Text(
                      'My project',
                      style: TextStyle(fontSize: 30),
                    ),
                    Icon(
                      Icons.keyboard_arrow_down,
                      color: Color.fromARGB(255, 251, 69, 44),
                      size: 40,
                    )
                  ],
                ),
              ),
              IconButton(onPressed: () {}, icon: Icon(Icons.sort))
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 60,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 20,
                itemBuilder: (context, index) => typeofproject(index)),
          ),
          SizedBox(
            height: 20,
          ),
          Text('You have 11 project'),
          Container(
              height: 455,
              child: ListView.builder(
                  itemCount: 30, itemBuilder: (context, index) => detailList()))
        ]),
      ),
    );
  }

  Widget detailList() {
    return SizedBox(
      height: 200,
      width: MediaQuery.sizeOf(context).width * 70 / 100,
      child: Card(
        color: Colors.white,
        child: Padding(
          padding: EdgeInsets.only(left: 16, top: 25),
          child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Container(
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(5)),
                child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.abc,
                    ))),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Branding Studio'),
                  Text('21 task| 12 sep 19'),
                  SizedBox(
                    height: 20,
                  ),
                  Text('Members'),
                  Row(
                    children: [
                      userphoto(),
                      userphoto(),
                      userphoto(),
                      userphoto(),
                    ],
                  ),
                ],
              ),
            )
          ]),
        ),
      ),
    );
  }

  Widget userphoto() {
    return Padding(
      padding: const EdgeInsets.only(right: 8),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Color.fromARGB(255, 225, 223, 223)),
        child: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.adb,
              color: const Color.fromARGB(255, 100, 100, 100),
            )),
      ),
    );
  }

  Widget typeofproject(index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          currentActive = index;
        });
      },
      child: Container(
        width: 70,
        child: Card(
          child: Center(
            child: Text(
              'All',
              style: TextStyle(
                  color: index == currentActive ? Colors.white : Colors.black),
            ),
          ),
          color: index == currentActive
              ? const Color.fromARGB(255, 241, 106, 96)
              : Colors.white,
        ),
      ),
    );
  }
}
