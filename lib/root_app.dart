import 'package:belling/widgets/card.dart';
import 'package:belling/widgets/icon.dart';
import 'package:belling/widgets/nearby.dart';
import 'package:belling/widgets/needs.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';

class RootApp extends StatefulWidget {
  const RootApp({Key? key}) : super(key: key);

  @override
  State<RootApp> createState() => _RootAppState();
}

class _RootAppState extends State<RootApp> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        unselectedItemColor: Colors.black12,
        selectedItemColor: Colors.indigo,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        currentIndex: currentIndex,
        type: BottomNavigationBarType.fixed,
        elevation: 0,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(FeatherIcons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(FeatherIcons.calendar),
            label: "calendar",
          ),
          BottomNavigationBarItem(
            icon: Icon(FeatherIcons.messageCircle),
            label: "messages",
          ),
          BottomNavigationBarItem(
            icon: Icon(FeatherIcons.user),
            label: "profile",
          ),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Hi, Jane",
                        style: Theme.of(context).textTheme.headline6,
                      ),
                      const SizedBox(height: 5),
                      const Text(
                        "How are your doing today?",
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      MyIcon(FeatherIcons.bell),
                      const SizedBox(
                        width: 10,
                      ),
                      MyIcon(FeatherIcons.search)
                    ],
                  )
                ],
              ),
              const MyCard(),
              const SizedBox(height: 40),
              HealthNeeds(),
              const SizedBox(height: 30),
              Text(
                "Nearby Doctor",
                style: Theme.of(context).textTheme.headline6,
              ),
              const SizedBox(height: 20),
              const Nearby()
            ],
          ),
        ),
      ),
    );
  }
}
