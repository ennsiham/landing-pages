// ignore_for_file: deprecated_member_use, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:page_slider/models/slide.dart';
import 'package:page_slider/widgets/slidesitem.dart';

class GettingStarted extends StatelessWidget{
   GettingStarted({Key? key}) : super(key: key);
  final PageController _pageController = new PageController(
    initialPage: 0,
  );
  @override 
  Widget build(BuildContext context)
  {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: <Widget>[
              Expanded(
                child: PageView.builder(
                  scrollDirection: Axis.horizontal,
                  controller: _pageController,
                  itemCount: slideList.length, 
                  itemBuilder: (ctx,i) => SlideItem(i),
                ),
              )
,
             Padding(
               padding: const EdgeInsets.all(20.0),
               child: Column(
               crossAxisAlignment: CrossAxisAlignment.stretch,
               children: <Widget>[
                FlatButton(onPressed: (){},
                    shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5)),
                    color: Theme.of(context).primaryColor,
                    textColor: Colors.white, 
                    child: const Text('Rejoinez nous!',style: TextStyle(fontSize: 15,fontFamily: 'Schyler',),), ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                      
                      Text('Vous êtes un pompier ?',style: TextStyle(fontSize: 16,fontFamily: 'Schyler', 
                      color: Theme.of(context).primaryColor),),

                      FlatButton(onPressed: (){},
                    
                      child:  Text('Se connecter',style: TextStyle(fontSize: 16,fontFamily: 'Schyler', 
                      color: Theme.of(context).primaryColor, decoration: TextDecoration.underline,
                      fontWeight: FontWeight.bold),),
                  )
                ],)
               ],),
             )
            ]),
        ),
      ),
    );
  }
}
