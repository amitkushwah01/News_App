import 'package:api_rev_news/main.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
class Splash extends StatefulWidget
{
  @override
  State<StatefulWidget> createState() {
    return SplashState();
  }
}
class SplashState extends State<Splash>
{
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.black,
      body:SingleChildScrollView(scrollDirection: Axis.vertical,
        child: Column(
          children: [
            // Lottie.asset('ass/lottie/animation_lk51jkm2.json'),
            // Lottie.asset('ass/lottie/animation_lk51kc6a.json'),
            SizedBox(height: 100,),
            SizedBox(height: 411,
              child: Stack(
                children: [
                  Container(height: double.infinity,width: double.infinity,),
                  Lottie.asset('ass/lottie/animation_lk51llbi.json'),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Align(alignment: Alignment.bottomCenter,
                      child: InkWell(
                        onTap:() {
                          Navigator.pushReplacement(context,MaterialPageRoute(
                            builder: (context) => MyHomePage(),
                          ));
                        },
                        child: Container(
                          width: 120,height: 35,
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(20)
                          ),
                          child: Center(child: Text("Get's Start",style: TextStyle(color: Colors.black,fontSize: 18),)),
                        ),
                      )
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      )
    );
  }
}