import 'package:flutter/material.dart';
import 'package:home_app/home/home_page_view.dart';
import 'package:home_app/settings/settings_view.dart';


class NavigationPageView extends StatefulWidget {
  @override
  _NavigationPageViewState createState() => _NavigationPageViewState();
}

class _NavigationPageViewState extends State<NavigationPageView> {
  int _selectedIndex = 0;

  static List<Widget> _widgetOptions = <Widget>[
    HomePageView(),
    SettingsView(),
    HomePageView()  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
        appBar: AppBar(
        toolbarHeight: 100,
        leading: IconButton(icon: Icon(Icons.assistant), onPressed: (){
          showModalBottomSheet(context: context, builder: 
             (BuildContext context) {
                      return Container(
                        height: 1000, 
                        color: Colors.white,
                        child: Scaffold(
                          body: Text("HST Asistan", style: Theme.of(context).textTheme.labelMedium),
                        ),
                      );
                    },
                    showDragHandle: false
            );
          },),
        automaticallyImplyLeading: false,
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
              Colors.green.withOpacity(1),
              Colors.blue
            ]),
          ),
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("HST",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 30)),
            Padding(
                padding:
                    EdgeInsets.only(left: 10),
                child: Text("POS",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w100,
                      fontSize: 30,
                    )))
          ],
        ),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.notifications))
        ],
      ),
      body: IndexedStack(
        index: _selectedIndex,
        children: _widgetOptions,
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Business',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'School',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}
