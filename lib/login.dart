import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'home.dart';

class login extends StatefulWidget{
  @override
  State<login> createState() => _loginState();
}
bool pass=true;
String name1="aseel ghaleb";
String src="assets/images/received_613861535908405.png";
class _loginState extends State<login> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(body:

    SingleChildScrollView(
      child:
      Center(child: Column(children: [

        Padding(
          padding: const EdgeInsets.only(top:110),
          child: Text("ASEEL",style: TextStyle(fontSize: 40,color: Colors.indigo ),),
        ),
        SizedBox(height: 33,),

        Container(padding:EdgeInsets.only(right: 220),
          child:


          Column(

            children: [
              Image.asset(src),SizedBox(height: 30,),
              Text(name1,style:TextStyle(color:Colors.indigo,fontSize: 30 ) ,),
              Text("?hello aseel?",style:TextStyle(color:Colors.blueGrey,fontSize: 20 ) ,),SizedBox(height: 40,),
              SizedBox(height: 15,),


            ],
          ),

        ),
        Padding(
            padding: const EdgeInsets.only(left: 35,right: 35),
            child:  TextField(decoration:InputDecoration(labelText:"Enter Password " ,suffixIcon:IconButton(icon: Icon(pass ==true?Icons.visibility:pass==false?Icons.visibility_off:Icons.visibility), onPressed: () {setState(() {
              pass=!pass;
            });},) ),keyboardType:TextInputType.visiblePassword,obscureText:pass ,)),
        SizedBox(height: 10,),InkWell(onTap:(){setState(() {Navigator.of(context).push(MaterialPageRoute(builder:(_){return home(name1, src);}));});} ,child: Text("Forgot your password",style: TextStyle(color:Colors.indigo),)),Container(child:Padding(
          padding: const EdgeInsets.only(top:50,left: 35),
          child: Column(children: [a("assets/images/surface1.png","surface"),SizedBox(height:35,),a("assets/images/qr-code (4).png","qr-code"),SizedBox(height:35,),a("assets/images/Group 2649.png","phone-call")],),
        ),) ,Padding(
          padding: const EdgeInsets.only(top: 70),
          child: Image.asset("assets/images/Rectangle 1.png"),
        ) ],)),
    ),

    );
    throw UnimplementedError();
  }
  Widget a(String n,String n1 ){return Row(children: [Image.asset(n),SizedBox(width: 15 ,),Text(n1)],);}
}