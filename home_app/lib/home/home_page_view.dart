import 'package:flutter/material.dart';
import 'package:home_app/settings/settings_view.dart';

class HomePageView extends StatefulWidget {
  const HomePageView({super.key});

  @override
  State<HomePageView> createState() => _HomePageViewState();
}

class _HomePageViewState extends State<HomePageView> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
        body: Column(
          children: [
            Container(
              height: height / 3,
              width: width,
              decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                const Color.fromARGB(255, 41, 130, 44),
                Color.fromARGB(255, 14, 42, 135)
              ])),
              child: Column(
                children: [],
              ),
            ),
            Expanded(
                child: Container(
                  decoration: BoxDecoration(color: Colors.white),
                  child: ListView(
                    children: [
                      SizedBox(child: Text("data",), height: 100, width: width,),
                      SizedBox(child: Text("data"), height: 100, width: width,),
                      SizedBox(child: Text("data"), height: 100, width: width,),
                  ],
                              ),
                )),
                
          ],
        ),
    );
  }
}
