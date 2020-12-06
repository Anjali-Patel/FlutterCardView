import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
void main(){
  runApp(MaterialApp(
    title: "Awesome App",
    home:Homepage(),
    theme: ThemeData(primarySwatch: Colors.purple),
  ));

}
class Homepage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
       appBar: AppBar(title: Text("Hii android developers"),),
       body:Center(
         child:Padding(
           padding: const EdgeInsets.all(16),
           child: Card(
             child: Column(
               children:<Widget> [Image.network("https://i.pinimg.com/originals/28/0d/61/280d6187a916255757daaf67dd3cdc2f.jpg"),
               SizedBox(height: 20,),
               Text("Change Me",
               style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
               SizedBox(height:20),
               Padding(
                 padding: const EdgeInsets.all(16.0),
                 child: TextField(
                   decoration: InputDecoration(hintText: "Enter your name"),
                 ),
               )],
             ),
           ),
         )
      ),

      drawer: Drawer(child:ListView(
        padding: EdgeInsets.zero,
          children:<Widget>[UserAccountsDrawerHeader(currentAccountPicture:CircleAvatar(backgroundImage: NetworkImage("https://images.indulgexpress.com/uploads/user/imagelibrary/2019/12/19/original/Diamirza.jpg"),),accountName: Text("Anjali Patel"), accountEmail: Text("anjalics14.academic@gmail.com"))
           /* DrawerHeader(child: Container(child:Text("I am application developer",style: TextStyle(color: Colors.white),),
              decoration:BoxDecoration(color:Colors.purple),),)*/
            , ListTile(leading: Icon(Icons.person),
             title:Text("Account") ,subtitle: Text("Personal"),trailing:Icon(Icons.edit) ,), ListTile(leading: Icon(Icons.email),
              title:Text("Email") ,subtitle: Text("anjalics14.academic@gmail.com"),trailing:Icon(Icons.send) ,)])),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
       child: Icon(Icons.edit),),
    );

  }

}