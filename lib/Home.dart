//import 'package:awet_store/video%20backg.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(



          floatingActionButton:FloatingActionButton( //Floating action button on Scaffold
            onPressed: (){
              //code to execute on button press
            },
            child: Icon(Icons.send), //icon inside button
          ),

          floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
          //floating action button position to center

          bottomNavigationBar: BottomAppBar( //bottom navigation bar on scaffold
            color:Colors.purpleAccent.shade700,
            shape: CircularNotchedRectangle(), //shape of notch
            notchMargin: 5, //notche margin between floating button and bottom appbar
            child: Row( //children inside bottom appbar
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                IconButton(icon: Icon(Icons.menu, color: Colors.white,), onPressed: () {},),
                IconButton(icon: Icon(Icons.search, color: Colors.white,), onPressed: () {},),
                IconButton(icon: Icon(Icons.print, color: Colors.white,), onPressed: () {},),
                IconButton(icon: Icon(Icons.people, color: Colors.white,), onPressed: () {},),
              ],
            ),
          ),
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            leading: Icon(Icons.list, color: Colors.purpleAccent),
            title:
              Text(
                'StartBlok Actief2',
                style: TextStyle(color: Colors.deepPurple, fontWeight: FontWeight.bold),
              ),
          ),
          body: ListView(
            children: [
              UpperPart()

            ],
          )
      ),

    );
  }
}



class UpperPart extends StatelessWidget {
  const UpperPart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Stack(
          children: [
            // BackgroundVideo(),
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height*0.5 ,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/logo.png"),
                    fit: BoxFit.cover
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 140, left: 20, right: 20),
              child:
              Container(
                // margin: EdgeInsets.all(1) ,
                decoration: const BoxDecoration(color: Colors.white, borderRadius: BorderRadius.all(Radius.circular(20)), boxShadow: [
                  BoxShadow(color: Colors.deepPurple, offset: Offset(2,2), blurRadius: 30),
                ]),
                child: const ListTile(
                  leading: Icon(Icons.search, color: Colors.purpleAccent),
                  title: TextField(
                    decoration: InputDecoration(
                        hintText: "          Search Here",
                        border: InputBorder.none),
                  ),
                  trailing: Icon(
                    Icons.filter_list,
                    color: Colors.purpleAccent,
                  ),
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}
