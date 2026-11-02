import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 7, 167, 116),
        leading: IconButton(
          onPressed: () => {Navigator.pop(context)},
          icon: Icon(Icons.arrow_back_ios),
        ),
        title: Text('Profile Card'),
      ),
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(
              color: const Color.fromARGB(255, 50, 231, 56),
              width: 2,
            ),
            color: const Color.fromARGB(255, 50, 231, 56).withOpacity(0.3),
            borderRadius: BorderRadius.circular(20),
          ),
          margin: EdgeInsets.all(5),
          width: double.infinity,
          height: 350,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.account_circle,
                color: Color.fromARGB(255, 7, 167, 116),
                size: 150,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Text(
                  'Eng.Basil Mohamed',
                  style: TextStyle(
                    color: Color.fromARGB(255, 7, 167, 116),
                    fontSize: 27,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Text(
                'Flutter Developer | Trainer',
                style: TextStyle(
                  color: Color.fromARGB(255, 102, 106, 105),
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 7, 167, 116),
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(right: 30, left: 30),
                      child: MaterialButton(
                        onPressed: () {},
                        child: Row(
                          children: [
                            Icon(Icons.message, color: Colors.white, size: 20),
                            Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Text(
                                'Message',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 13,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 3),
                  Container(
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 219, 96, 2),
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(right: 30, left: 30),
                      child: MaterialButton(
                        onPressed: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.call, color: Colors.white, size: 20),
                            Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Text(
                                'Call',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 13,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color.fromARGB(255, 7, 167, 116),
        onTap: (int x) {
          x = 1;
          if (x > 0) {
            Navigator.pop(context);
          }
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home, color: Colors.white),
            label: 'Home',
            backgroundColor: Colors.white,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings, color: Colors.white),
            label: 'Settings',
          ),
        ],
      ),
    );
  }
}
