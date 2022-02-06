import 'dart:ui';

import 'package:bio_app/wedgets/BioCard.dart';
import 'package:flutter/material.dart';
class BioScreen extends StatelessWidget {
  const BioScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: const Text('BIO',style: TextStyle(
          fontFamily: 'RobotoMono',
          fontSize: 30,
          fontWeight: FontWeight.w600
        ),),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Stack(
        children: [
          Image.asset('images/cool-backgrounds.jpg',
          height: double.infinity,
            fit: BoxFit.cover,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(radius: 60,
                backgroundImage: NetworkImage('https://cdn5.vectorstock.com/i/1000x1000/45/39/avatar-woman-with-laptop-design-vector-31604539.jpg'),),
               SizedBox(height: 5,)
              ,Text('Saja Ghazi Jebril', style: TextStyle(
                  fontFamily: 'RobotoMono',
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                fontStyle: FontStyle.normal,
                  color:Colors.white
              ),
              ),
              SizedBox(height: 5,),
              Text('Flutter_Course ', style: TextStyle(
                  fontFamily: 'RobotoMono',
                  fontSize: 15,
                  fontWeight: FontWeight.w100,
                  fontStyle: FontStyle.normal,
                  color:Colors.white
              ),
              ),

              Divider(color: Colors.white,thickness: 2,
                indent: 30,
                endIndent: 30,
              ),
              BioCard(leadingIcon: Icon(Icons.email), TextSubTitle: 'sajaghazi@gmail.com',
    Texttitle: 'Email', trailingIcon: Icon(Icons.send),onPressed: (){print('email');},),
              BioCard(leadingIcon: Icon(Icons.phone_android), TextSubTitle:'+972_0599_523_555'  ,
                  Texttitle: 'Phone', trailingIcon: Icon(Icons.phone),onPressed: (){print('phone');},)

            ],
          ),
          const PositionedDirectional(
              start: 0,
              end: 0,
              bottom: 10,
              child: Text('Flutter 2022',textAlign: TextAlign.center,style: TextStyle(
                color: Colors.white
              ),))
        ],
      ),
    );
  }
}

