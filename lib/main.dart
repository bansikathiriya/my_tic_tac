import 'package:flutter/material.dart';

void main()
{
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: one(),
  ));
}
class one extends StatefulWidget {
  const one({Key? key}) : super(key: key);

 @override
  State<one> createState() => _oneState();
}

class _oneState extends State<one> {
  int t=0,o=0,x=0;
  String turn="o",won="";
  List list=List.filled(9, "");

  win()
  {
    if(list[0]=="o"&&list[1]=="o"&&list[2]=="o"||
       list[0]=="o"&&list[4]=="o"&&list[8]=="o"||
       list[0]=="o"&&list[3]=="o"&&list[6]=="o"||
       list[1]=="o"&&list[4]=="o"&&list[7]=="o"||
       list[2]=="o"&&list[5]=="o"&&list[8]=="o"||
       list[6]=="o"&&list[7]=="o"&&list[8]=="o"||
       list[3]=="o"&&list[4]=="o"&&list[5]=="o"||
       list[2]=="o"&&list[4]=="o"&&list[6]=="o"
    ){
         won="o";
       }
       else if(
       list[0]=="x"&&list[1]=="x"&&list[2]=="x"||
       list[0]=="x"&&list[4]=="x"&&list[8]=="x"||
       list[0]=="x"&&list[3]=="x"&&list[6]=="x"||
       list[1]=="x"&&list[4]=="x"&&list[7]=="x"||
       list[2]=="x"&&list[5]=="x"&&list[8]=="x"||
       list[6]=="x"&&list[7]=="x"&&list[8]=="x"||
       list[3]=="x"&&list[4]=="x"&&list[5]=="x"||
       list[2]=="x"&&list[4]=="x"&&list[6]=="x"
       ){
             won="x";
           }

  }
  changeval(int pos)
  {
    setState(() {
      if(list[pos]=="")
        {
          if(t%2==0)
            {
              list[pos]="o";
              o++;
              turn="x";
            }
          else
            {
              list[pos]="x";
              x++;
              turn="o";
            }
          t++;
          win();
        }
      print(t);
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TIC_TAC_TOE",style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),),
      ),
      body: Column(
        children: [
          Expanded(child: Row(
            children: [
              Expanded(child: InkWell(onTap: () {changeval(0);},child: Container(alignment:Alignment.center,height:double.infinity,color: Colors.blueAccent,margin: EdgeInsets.all(10),child: Text("${list[0]}",style: TextStyle(fontSize: 60)),),)),
              Expanded(child: InkWell(onTap: () {changeval(1);},child: Container(alignment:Alignment.center,height:double.infinity,color: Colors.blueAccent,margin: EdgeInsets.all(10),child: Text("${list[1]}",style: TextStyle(fontSize: 60)),),)),
              Expanded(child: InkWell(onTap: () {changeval(2);},child: Container(alignment:Alignment.center,height:double.infinity,color: Colors.blueAccent,margin: EdgeInsets.all(10),child: Text("${list[2]}",style: TextStyle(fontSize: 60)),),)),
            ],
          )),
          Expanded(child: Row(
            children: [
              Expanded(child: InkWell(onTap: () {changeval(3);},child: Container(alignment:Alignment.center,height:double.infinity,color: Colors.blueAccent,margin: EdgeInsets.all(10),child: Text("${list[3]}",style: TextStyle(fontSize: 60)),),)),
              Expanded(child: InkWell(onTap: () {changeval(4);},child: Container(alignment:Alignment.center,height:double.infinity,color: Colors.blueAccent,margin: EdgeInsets.all(10),child: Text("${list[4]}",style: TextStyle(fontSize: 60)),),)),
              Expanded(child: InkWell(onTap: () {changeval(5);},child: Container(alignment:Alignment.center,height:double.infinity,color: Colors.blueAccent,margin: EdgeInsets.all(10),child: Text("${list[5]}",style: TextStyle(fontSize: 60)),),)),
            ],
          )),
          Expanded(child: Row(
            children: [
              Expanded(child: InkWell(onTap: () {changeval(6);},child: Container(alignment:Alignment.center,height:double.infinity,color: Colors.blueAccent,margin: EdgeInsets.all(10),child: Text("${list[6]}",style: TextStyle(fontSize: 60)),),)),
              Expanded(child: InkWell(onTap: () {changeval(7);},child: Container(alignment:Alignment.center,height:double.infinity,color: Colors.blueAccent,margin: EdgeInsets.all(10),child: Text("${list[7]}",style: TextStyle(fontSize: 60)),),)),
              Expanded(child: InkWell(onTap: () {changeval(8);},child: Container(alignment:Alignment.center,height:double.infinity,color: Colors.blueAccent,margin: EdgeInsets.all(10),child: Text("${list[8]}",style: TextStyle(fontSize: 60)),),)),
            ],
          )),
          Expanded(child: Column(
            children: [
              Expanded(child: Row(
                children: [
                  Expanded(flex: 2,child:Container(
                    color: Colors.blueAccent,
                    margin: EdgeInsets.only(
                      left: 20,right: 20,top: 10,bottom: 10,
                    ),
                    child: Text("$turn Turn",style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),),
                    alignment: Alignment.center,
                  )),
                  Expanded(flex:2,child: Container(
                    color: Colors.blueAccent,
                    margin: EdgeInsets.only(
                      left: 20,right: 20,top: 10,bottom: 10,
                    ),
                    child: Text("x :$x",style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),),
                    alignment: Alignment.center,
                  )),
                  Expanded(flex:2,child: Container(
                    color: Colors.blueAccent,
                    margin: EdgeInsets.only(
                      left: 20,right: 20,top: 10,bottom: 10,
                    ),
                    child: Text("o :$o",style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),),
                    alignment: Alignment.center,
                  ))
                ],
              )),
              Expanded(flex:1,child: Container(
                color: Colors.blueAccent,
                margin: EdgeInsets.only(
                  left: 100,
                  right: 100,
                  bottom: 10,
                  top: 10
                ),
                child: Text("$won  IS WINNER",style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),),
                alignment: Alignment.center,
              ))
            ],
          ))
        ],
      ),
    );
  }
}
