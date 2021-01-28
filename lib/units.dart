import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

C1Unit(imgsrc, txt)
{
  return FlatButton(
    padding: EdgeInsets.zero,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          margin: EdgeInsets.only(left:8, right:8),
          child: CircleAvatar(
            radius: 56,
            backgroundImage: NetworkImage(imgsrc,),
          ),
        ),
        Padding(padding: EdgeInsets.all(4)),
        Text(txt, style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
      ],
    ),
    onPressed: () {},
  );
}

C2Unit(imgsrc, txt)
{
  return FlatButton(
    padding: EdgeInsets.zero,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        
        Container(
          width: 80,
          height: 64,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: Image.network(imgsrc,fit:BoxFit.cover),
          ),
        ),
        Text(txt, style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
      ],
    ),
    onPressed: () {},
  );
}

C3Unit(imgsrc, txt)
{
  return GestureDetector(
    child: Container(
      margin: EdgeInsets.only(left:4, right:4),
      child: ClipRRect(
          borderRadius: BorderRadius.circular(16.0),
          child: Stack(
            children: [
              Image.network(
                imgsrc,
                fit: BoxFit.fill,
                width: 140.0,
                height: 160.0,
              ),
              Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [Colors.white30,Colors.white54])),
                alignment: Alignment.bottomLeft,
                width: 140.0,
                height: 160.0,
                child: Container(
                    margin:EdgeInsets.all(8),
                    child: Text(txt,style: TextStyle(fontSize: 18,color: Colors.green),)
                ),
              )
            ],
          )
      ),
    ),
    onTap: () {},
  );
}

C4Unit(imgsrc, header, subtxt)
{
  return GestureDetector(
    child: Container(
      margin: EdgeInsets.only(left:4, right:4),
      child: ClipRRect(
          borderRadius: BorderRadius.circular(16.0),
          child: Stack(
            children: [
              Image.network(
                imgsrc,
                fit: BoxFit.fill,
                width: 200.0,
                height: 150.0,
              ),
              Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [Colors.transparent,Colors.black54])),
                alignment: Alignment.bottomLeft,
                width: 200.0,
                height: 150.0,
                child: Container(
                    margin:EdgeInsets.all(8),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(header,style: TextStyle(fontSize: 18,color: Colors.white),),
                        Text(subtxt,style: TextStyle(fontSize: 14,color: Colors.white, fontWeight: FontWeight.w100),)
                      ],
                    )
                ),
              )
            ],
          )
      ),
    ),
    onTap: () {},
  );
}

C5Unit(imgsrc, header, subtxt)
{
  return GestureDetector(
    child: Container(
      margin: EdgeInsets.only(bottom: 16),
      child: ClipRRect(
          borderRadius: BorderRadius.circular(16.0),
          child: Stack(
            children: [
              Image.network(
                imgsrc,
                fit: BoxFit.fill,
                height: 320.0,
              ),
              Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [Colors.black45,Colors.transparent])),
                alignment: Alignment.bottomLeft,
                height: 320.0,
                child: Container(
                    margin:EdgeInsets.all(32),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(header,style: TextStyle(fontSize: 24,color: Colors.white),),
                        Text(subtxt,style: TextStyle(fontSize: 16,color: Colors.white, fontWeight: FontWeight.w100),)
                      ],
                    )
                ),
              )
            ],
          )
      ),
    ),
    onTap: () {},
  );
}