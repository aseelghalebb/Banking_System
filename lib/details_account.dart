import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class details_account extends StatelessWidget{
  String name3="";
  String src3="";
  details_account(this.name3,this.src3){

  }
  @override
  Widget build(BuildContext context) {
     return Scaffold(backgroundColor: Colors.grey,body:SingleChildScrollView(
       child: SafeArea(
         child: Column(children: [Padding(
           padding: const EdgeInsets.all(17.0),
           child: Row(children: [InkWell(child: Icon(Icons.arrow_back_outlined,color:Colors.indigoAccent),onTap: (){Navigator.pop(context);},),SizedBox(width: 110,),Text(name3,style:TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),Expanded(child:Container()),Image.asset(src3,width:32 ,height:32,)],),
         ),SizedBox(height: 7,),Padding(
           padding: const EdgeInsets.all(8.0),
           child: Container(height:200,decoration:BoxDecoration(borderRadius: BorderRadius.circular(10),color:Colors.indigo),child:Padding(
             padding: const EdgeInsets.only(top: 10,right: 12,left: 12,bottom: 10),
             child: Padding(
               padding: const EdgeInsets.all(10),
               child: Column(children: [Row(children: [Text("aseel",style: TextStyle(color:Colors.white,fontWeight:FontWeight.bold ,fontSize: 25 ),),Expanded(child: Container()),Image.asset("assets/images/Group 2660.png",color: Colors.white,)],),
               SizedBox(height: 25,),Text("20.000.000",style: TextStyle(color:Colors.white ,fontSize:30 )),SizedBox(height: 10,),Text("Saldo disponible",style: TextStyle(color:Colors.white )),Row(children: [Text("001ah7297",style: TextStyle(color:Colors.white ,fontSize: 20 )),Expanded(child:Container()), Image.asset("assets/images/g4158.png")],)],),
             ),
           ) ,),
         ),SizedBox(height: 10,),Container(height:150,color: Colors.white,child:Padding(
           padding: const EdgeInsets.all(8.0),
           child: Column(children: [Row(children: [Image.asset("assets/images/Icon feather-credit-card.png"),SizedBox(width: 20,),Text("Detalle de tarjeta"),SizedBox(width: 120,),Text("Apagar tarjeta"),Expanded(child: Container()),Image.asset("assets/images/Group 2670.png")],),SingleChildScrollView(scrollDirection: Axis.horizontal,child: Row(children: [kk("Pagar servicio","assets/images/a.png"),SizedBox(width: 20,),kk("Transferir","assets/images/a1.png"),SizedBox(width: 20,),kk("Retiro sin tarjeta","assets/images/a2.png"),SizedBox(width: 20,),kk("6 mas","assets/images/a4.png"),SizedBox(width: 40,),],)),],),
         ) ,),SizedBox(height: 30,),Container(height:310 ,decoration:BoxDecoration(borderRadius: BorderRadius.circular(10),color:Colors.white),child: Padding(
           padding: const EdgeInsets.all(10.0),
           child: SingleChildScrollView(
             child: Column(children: [Row(children: [Text("U LTIMOS MOVIMOENTOS",style: TextStyle(color: Colors.indigo,fontWeight:FontWeight.bold,) ),SizedBox(height: 50,),Expanded(child: Container()),Padding(
               padding: const EdgeInsets.only(top: 30),
               child: Image.asset("assets/images/Icon feather-search.png"),
             ),],),kk1("Su pago en efectivo", "Movimento", "+ 1,600.00", "Hoy",Colors.red),SizedBox(height: 20,),kk1("Spi enviado azteca", "Transferencia interocarie", "- 1.600.00","Hoy",Colors.lightGreen),SizedBox(height: 10,),Padding(
               padding: const EdgeInsets.only(right: 315),
               child: Text("2 enero",style: TextStyle(color: Colors.indigo,fontWeight: FontWeight.bold,fontSize: 15),),
             ),SizedBox(height: 5,),kk1("Su pago en efectivo", "Movimiebto BbVA", "1.600.00", "Ayer",Colors.indigoAccent)],),
           ),
         )),],),
       ),
     ));
    throw UnimplementedError();
  }
  Widget kk(String name,String src){return Column(mainAxisAlignment: MainAxisAlignment.center,children: [Image.asset(src),Text(name)],);}
  Widget kk1(String m,String m1,String h,String h1,Color color){return Container(decoration:BoxDecoration(border:Border.all(width: 1,color: Colors.grey),borderRadius: BorderRadius.circular(20)) ,child:Padding(
    padding: const EdgeInsets.all(15.0),
    child: Row(children: [Column(children: [Text(m,style: TextStyle(fontWeight:FontWeight.bold,fontSize: 15,color: Colors.indigo),),Text(m1)],),Expanded(child: Container()),Column(children: [Text(h,style: TextStyle(color:color ,fontWeight: FontWeight.bold),),Text(h1)],)],),
  ) ,);}
}