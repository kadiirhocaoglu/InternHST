import 'package:demo_application/home_page.dart';
import 'package:demo_application/widget/custom_appbar.dart';
import 'package:demo_application/widget/custom_padding.dart';
import 'package:flutter/material.dart';

class StarterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar.shared.StarterAppBar(context),
      body: SafeArea(
        child: Padding(
          padding: PaddingItems.shared.paddingHorizontalSmall(),
          child: Column(
            children: [
              Card(
                margin: EdgeInsets.symmetric(horizontal: 100.0),
                child: Image.asset("assets/ic_movie_logo.jpeg"),
              ),
              Text(
                "MovieApp Demo",
                style: Theme.of(context).textTheme.titleLarge,
                textAlign: TextAlign.center,
              ),
              Spacer(),
              ElevatedButton(    
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) {
                          return HomePage();
                        },
                      ),
                    );
                    
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [Text("Hemen Başla", style: Theme.of(context).textTheme.titleLarge,), Icon(Icons.chevron_right)],
                  ))
                  
            ],
          ),
        ),
      ),
    );
  }

}