import 'package:demo_application/home_page.dart';
import 'package:demo_application/widget/custom_appbar.dart';
import 'package:demo_application/widget/custom_padding.dart';
import 'package:flutter/material.dart';

class StarterPage extends StatelessWidget {
  @override
  void dispose() {
    // Bu sayfadan çıkıldığında dispose metodu çağrılır
    print('SecondPage disposed');
    ;
  }
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
                child: Image.asset("assets/ic_hst_logo.png"),
              ),
              Text(
                "Kolay ödeme al.",
                style: Theme.of(context).textTheme.displayMedium,
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