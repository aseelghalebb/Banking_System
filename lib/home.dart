import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:untitled/details_account.dart';
import 'package:untitled/login.dart';



class home extends StatelessWidget{
  String name2="";
  String src2="";
  home(this.name2,this.src2);

  @override
  Widget build(BuildContext context) {

    return Scaffold(backgroundColor:Colors.white70,body: SingleChildScrollView(
      child: Center(

        child: Column(children: [

          Stack(
              children:[ Container(color: Colors.indigo,height:262,child: Padding(
                padding: const EdgeInsets.only(left:150),
                child: Row(children: [Text(name2,style: TextStyle(fontSize:20,color: Colors.white),),SizedBox(width:70,),Image.asset(src2,width:32 ,height:32,)],),
              )),


                Padding(
                  padding: const EdgeInsets.only(left: 10,right: 10),
                  child:Column(
                    children: [
                      SizedBox(height: 180,),
                      Container(decoration:BoxDecoration(borderRadius: BorderRadius.circular(10),color:Colors.white) ,height:214,width: 392  ,child:Column(children:[Padding(
                        padding: const EdgeInsets.only(top: 10 ),
                        child: Padding(
                            padding: const EdgeInsets.only(top: 10,left: 10,right: 10),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Text("TUS CUENTAS",style: TextStyle(fontSize: 17,fontWeight:FontWeight.bold,color:Colors.indigo ),),
                                    SizedBox(width:100,) ,Expanded(child:Container() ),
                                    Image.asset("assets/images/Group 2660.png"),

                                  ],
                                ),SizedBox(height: 10),Row(children: [SizedBox(height: 25,),Column(children: [SizedBox(height: 12,),Text("001ah7297",style:TextStyle(color:Colors.indigo,fontSize: 20 )),SizedBox(height: 3,),Text("*37265",style: TextStyle(fontSize: 11),),SizedBox(height: 7,)],),SizedBox(width:70,),Column(
                                  children: [
                                    Row(
                                      children: [
                                        Text("20.000",style:TextStyle(fontSize:25 ,color: Colors.indigo),), SizedBox(width: 55,),Icon(Icons.arrow_forward_ios_outlined,color: Colors.grey,)
                                      ],
                                    ),
                                  ],
                                )],)
                                ,SizedBox(height: 10),Row(children: [Column(children: [Text("001ah7246",style:TextStyle(color:Colors.indigo,fontSize: 20 )),SizedBox(height:3,),Text("*36264",style: TextStyle(fontSize: 11))],),SizedBox(width: 67,),Row(children: [Text("40.000",style:TextStyle(fontSize:25 ,color: Colors.indigo)),SizedBox(width: 60,),Icon(Icons.arrow_forward_ios_outlined,color: Colors.grey,)],)],)],
                            )
                        ),
                      ),

                      ],)),
                    ],
                  ),
                ),
              ]),SizedBox(height: 30,),

          SingleChildScrollView(scrollDirection: Axis.horizontal,child: Container(decoration:BoxDecoration(borderRadius:BorderRadius.circular(10),color: Colors.white),height:150,width:MediaQuery.of(context).size.width ,child: SingleChildScrollView(scrollDirection: Axis.horizontal,child: Row(children: [InkWell(child: kk( "transferir","assets/images/s.png",),onTap: (){Navigator.of(context).push(MaterialPageRoute(builder: (_){return details_account(name2, src2);}));},),SizedBox(width: 5,),InkWell(child: kk( "Oportunidades","assets/images/s1.png",),onTap:(){Navigator.of(context).push(MaterialPageRoute(builder:(_){return details_account(name2, src2);}));} ,),SizedBox(width: 10,),InkWell(child: kk( "Retiro sin terjeta","assets/images/s2.png",),onTap:(){Navigator.of(context).push(MaterialPageRoute(builder:(_){return details_account(name2, src2);}));} ,),SizedBox(width: 10,),InkWell(child: kk( "Pagar servicic","assets/images/s3.png",),onTap:(){Navigator.of(context).push(MaterialPageRoute(builder:(_){return details_account(name2, src2);}));},)],)))),SizedBox(height: 20,),Container(child: Image.asset("assets/images/w.png"),color: Colors.white,),],),
      ),
    ));
    throw UnimplementedError();
  }

  Widget kk(String name,String src){return Column(mainAxisAlignment: MainAxisAlignment.center,children: [Image.asset(src),SizedBox(height: 10,),Text(name)],);}
}
