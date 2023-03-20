import 'package:flutter/material.dart';
import 'package:tugas2/identity.dart';

class HalamanDetail extends StatefulWidget {
  final Identity ident;
  const HalamanDetail({Key? key, required this.ident}) : super(key: key);


  @override
  State<HalamanDetail> createState() => _HalamanDetailState();
}

class _HalamanDetailState extends State<HalamanDetail> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(widget.ident.name),
          ],
        ),

      ),
      body: SingleChildScrollView(
        child: Column(
            children: <Widget>[
              Container(
                child: Image.network(widget.ident.fotoUrls,
                  width: 300,
                  height: 300,),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(widget.ident.name, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
                ],
              ),

              SizedBox(height: 20,),

              Padding(
                padding: const EdgeInsets.only(left:30, right: 30),
                child: Column(

                  children: [
                    Row(
                      children: [
                        Text('Username        : '),
                        Text(widget.ident.username),
                      ],
                    ),
                    Row(
                      children: [
                        Text('Email                : '),
                        Text(widget.ident.email[0]),
                        Text(','),
                        Text(widget.ident.email[1]),
                      ],
                    ),
                    SizedBox(height: 20,),
                    Container(
                      child:
                      Text('Companies       ',style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
                      ),
                    SizedBox(height: 5,),
                    Container(
                      alignment: Alignment.topLeft,
                      child: Text(widget.ident.company[0][0], style: TextStyle(fontSize: 17),),
                    ),
                    SizedBox(height: 2,),
                    Container(
                      alignment: Alignment.topLeft,
                      child: Text(widget.ident.company[0][1]),
                    ),
                    SizedBox(height: 5,),
                    Container(
                      alignment: Alignment.topLeft,
                      child: Text(widget.ident.company[1][0], style: TextStyle(fontSize: 17),),
                    ),
                    SizedBox(height: 2,),
                    Container(
                      alignment: Alignment.topLeft,
                      child: Text(widget.ident.company[1][1]),
                    ),

                  ],
                ),
              ),

              SizedBox(height: 20,),

            ]
        ),

      ),
    );
  }
}
