import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:page_slider/models/slide.dart';

class SlideItem extends StatelessWidget {

  final int index;
  SlideItem(this.index);
 
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children:  <Widget>[
              Container(
                height: 200,
                width: 200,
                // ignore: prefer_const_constructors
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(image: AssetImage(slideList[index].imageUrl),
                  fit: BoxFit.cover
                  )
                ),

              ),
              SizedBox(height: 18,),
             Text(
              slideList[index].title,
              style: TextStyle(
                fontSize: 22,
                color: Theme.of(context).primaryColor,
                fontFamily: 'Schyler',
                
              ),
             ),
              Padding(
                padding: const EdgeInsets.all(14.0),
                child: Text(slideList[index].description,
                textAlign: TextAlign.center,
                style: TextStyle(fontFamily: 'Schyler',),),
                
               
                ),
              
             ],
             )

    );
    
  }
}