import 'package:flutter/material.dart';

class dashboard extends StatefulWidget {
  const dashboard({super.key});

  @override
  State<dashboard> createState() => _dashboardState();
}

class _dashboardState extends State<dashboard> {
  int activeCard = 0;
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
                'Dashboard',
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
      body: ListView(children: [
        Padding(
          padding: const EdgeInsets.only(left: 10.0, right: 5),
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Today\'s tasks',
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.w800,
                          fontStyle: FontStyle.normal)),
                  Container(
                    child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.arrow_forward_ios_sharp,
                        )),
                  )
                ],
              ),
              Container(
                height: 200,
                width: MediaQuery.sizeOf(context).width,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 3,
                  itemBuilder: (context, index) => CatagoryCard(index),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Open project',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                  IconButton(
                      onPressed: () {}, icon: Icon(Icons.arrow_forward_ios))
                ],
              ),
              SizedBox(
                height: 300,
                child: ListView.builder(
                    itemCount: 5,
                    itemBuilder: (context, index) => detailList()),
              ),
            ],
          ),
        ),
      ]),
    );
  }

  Widget detailList() {
    return Card(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(children: [
          Container(
              decoration: BoxDecoration(
                  color: Colors.black, borderRadius: BorderRadius.circular(5)),
              child: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.abc,
                  ))),
          const Padding(
            padding: EdgeInsets.only(left: 5),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Branding Studio'),
                Text('21 task'),
              ],
            ),
          )
        ]),
      ),
    );
  }

  Widget CatagoryCard(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          activeCard = index;
        });
      },
      child: Container(
        width: 170,
        child: Card(
          color: index == activeCard
              ? Color.fromARGB(255, 224, 86, 76)
              : const Color.fromARGB(255, 9, 102, 178),
          child: Padding(
            padding: EdgeInsets.all(18.0),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(
                'Branding Sutdio',
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.w700),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Hmoepage',
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.w700),
              ),
              Text(
                'design',
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.w700),
              ),
              SizedBox(
                height: 50,
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
