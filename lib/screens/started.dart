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
               padding: const EdgeInsets.all(14.0),
               child: Column(
               crossAxisAlignment: CrossAxisAlignment.stretch,
               children: <Widget>[
                FlatButton(onPressed: (){},
                    shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5)),
                    color: Theme.of(context).primaryColor,
                    textColor: Colors.white, 
                    child: const Text('Getting started',style: TextStyle(fontSize: 15,fontFamily: 'Schyler',),), ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                      
                      const Text('Have an account ?',style: TextStyle(fontSize: 18,fontFamily: 'Schyler',),),

                      FlatButton(onPressed: (){},
                    
                      child: const Text('Login',style: TextStyle(fontSize: 18,fontFamily: 'Schyler',),),
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
