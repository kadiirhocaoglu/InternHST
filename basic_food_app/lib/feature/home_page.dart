import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 22, 129, 146), 
        leading: Icon(null), 
        elevation: 0,
        systemOverlayStyle: SystemUiOverlayStyle.light,
        actions: [
          IconButton(
            onPressed: (){}, 
          icon: Icon(Icons.shopping_basket, color: Colors.black,),)
        ],
        ),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Padding(padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              children: [
                Text("K3ROrder", style: TextStyle(color: Colors.black, fontSize: 40, fontWeight:  FontWeight.bold),), 
                SizedBox(height: 20,),
                Container(
                  height: 50,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      makeCategory(true , "Pizza"),
                      makeCategory(false , "Pizza"),
                      makeCategory(false , "Pizafafsafasfasfsza"),
                      makeCategory(false , "Pizza"),
                      makeCategory(false , "Pizza")
                      
                    ],
                  ),
                ),
                SizedBox(height: 10,)
              ],
            ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10.0),
              child: Text("Ücretsiz Kargo", style: TextStyle(color: Colors.grey[700], fontSize: 20, fontWeight: FontWeight.bold),),), 
            Expanded(child: 
              Padding(padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  makeItem(image: "assets/bg_two.png")
                ],
              ),
            
              )
            )
          ],
        ),
      )
    );
  }
}

Widget makeCategory(bool isActive, String title) {
  return AspectRatio(aspectRatio: isActive ? 3 : 2.0 / 1,
  child: Container(
    alignment: Alignment.center,
    width: 50,
    margin: EdgeInsets.only(right: 10.0),
    decoration: BoxDecoration(
      color: isActive ? Color.fromARGB(255, 217, 206, 54) : Colors.white,
      borderRadius: BorderRadius.circular(50.0),
    ),

    child: Text(title, style: TextStyle(color: isActive ? Colors.black : Colors.black45, fontSize: 12, fontWeight: isActive ?  FontWeight.bold: FontWeight.w100), maxLines: 1,
    ),
    )
  );
}

Widget makeItem({image}){
  return AspectRatio(aspectRatio: 1 / 1.4,
  child: GestureDetector(
    child: Container(
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage(image), fit: BoxFit.cover),
      ),
      child: Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [
          Colors.black.withOpacity(0.9),
          Colors.black.withOpacity(0.3)
        ])
      ),),
    ),
  ),
  );
}