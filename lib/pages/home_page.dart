import 'package:bwachatty/widgets/chat_tile.dart';
import 'package:flutter/material.dart';
import 'package:bwachatty/style/theme.dart';
import 'package:bwachatty/widgets/chat_tile.dart';


class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: blueColor,
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        backgroundColor: greenColor,
        child:
        const Icon(Icons.add,
        size: 28
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: SafeArea(
      child: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              const SizedBox(height: 40),
              Image.asset("assets/images/image1.png",
              height: 100,
              width: 100,),
              const SizedBox(height : 20),
              const Text("Sabrina Carpenter",
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
              ),),
              const SizedBox(height: 10,),
              const Text("Travel Freelancer",
              style: TextStyle(
                fontSize: 16,
                color: Colors.lightBlue,
              ),),
              const SizedBox(height: 30,),
              Container(
                padding: const EdgeInsets.all(30),
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(40)
                  )
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Friends",style: titleTextStyle,),
                    ChatTile(
                      "assets/images/image2.png",
                      "Joshuer",
                      "Sorry, you're not my ty ..",
                      "Now",
                      true
                    ),
                    ChatTile(
                        "assets/images/image3.png",
                        "Gabriella",
                        "I saw it clearly and mig ..",
                        "2:30",
                      false
                    ),
                    const SizedBox(height: 30,),
                    Text("Groups",style: titleTextStyle,),
                    ChatTile(
                        "assets/images/icon.png",
                        "Jakarta Fair",
                        "Why does everyone ca ..",
                        "11:11",
                      false
                    ),
                    ChatTile(
                        "assets/images/icon2.png",
                        "Angga",
                        "Here here we can go..",
                        "7:11",
                      true
                    ),
                    ChatTile(
                        "assets/images/icon3.png",
                        "Bentley",
                        "The car which does not..",
                        "7:11",
                      true
                    ),



                  ],
                ),
              ),

            ],
          ),
        ),
      ),
    ),
    );
  }
}
