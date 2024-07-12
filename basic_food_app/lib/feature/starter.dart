import 'package:flutter/material.dart';
import 'package:basic_food_app/product/animations/fade_animation.dart';
class StarterPage extends StatefulWidget {
  const StarterPage({super.key});

  @override
  State<StarterPage> createState() => _StarterPageState();
}

class _StarterPageState extends State<StarterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(image: DecorationImage(
          image: AssetImage("assets/bg_one.png"),
          fit: BoxFit.cover)),
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.bottomCenter,
                colors: [ 
                Colors.black.withOpacity(0.9),
                Colors.black.withOpacity(0.6),
                Colors.black.withOpacity(0.3),
                ])
            ),
            child: Padding(
              padding: EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Widget100(1,Text("Yemek Siparişine Hoşgeldin", style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold, color: Colors.white),),),
                  SizedBox(
                    height: 20.0,
                  ),
                  Widget100(2, Text("Yakındaki restoranları görebilir ve sipariş verebilirsin", style:  TextStyle(fontSize: 20, fontWeight: FontWeight.normal, color: Colors.white60), ),),
                  SizedBox(
                    height: 20,
                  ),
                  Widget100(3,Container(
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                      gradient: LinearGradient(
                      colors: [
                        Colors.purple.withOpacity(1),
                        Colors.yellow.withOpacity(1)
                      ]), 
                    ),
                    child: MaterialButton(
                      minWidth: double.infinity,
                      child: Text("Start"),
                      onPressed: (){
                        debugPrint("Start Tıklandır");
                      },
                      ),
                  ),),
                  SizedBox(
                    height: 30,
                  ),
                  Widget100(3,Align(
                    child: Text("Senin için 7/24 buradayız", style: TextStyle(fontSize: 15, color: Colors.white38),)
                  ),),
                  SizedBox(
                    height: 30,
                  )
                ],
              ),
            ),
          ),
      ),
    );
  }
}