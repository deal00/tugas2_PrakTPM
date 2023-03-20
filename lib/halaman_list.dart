import 'package:flutter/material.dart';
import 'package:tugas2/halaman_detail.dart';
import 'package:tugas2/identity.dart';

class HalamanList extends StatefulWidget {
  const HalamanList({Key? key}) : super(key: key);

  @override
  State<HalamanList> createState() => _HalamanListState();
}

class _HalamanListState extends State<HalamanList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Main Page',),
      ),
      body: ListView.builder(
        itemBuilder: (context, index){
          final Identity ident = listIdentity[index];
          return InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(
                  builder: (context) => HalamanDetail(ident:ident)
              )
              );
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Card(
                      child: Image.network(ident.fotoUrls,
                        width: 200,
                        height: 200,
                      ),
                    ),
                    Column(

                        children: <Widget>[
                          Row(

                            children: [
                              Text(ident.name, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
                            ],

                          ),

                        ]
                    ),

                  ],
                ),
              ),
            ),
          );
        },
        itemCount: listIdentity.length,

      ),
    );
  }
}
