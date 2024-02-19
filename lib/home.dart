import 'package:flutter/material.dart';
import 'package:burguerclassic/constantes.dart' as con;

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: con.fondo,
      appBar: AppBar(
        backgroundColor: con.fondo,
        elevation: 10,
        shadowColor: con.blanco,
        title: Center(child: Image.asset("imagenes/Welcome 2.png",
        width: size.width * 0.1,),
        ),
        iconTheme: IconThemeData(color: con.blanco),
        actions:[
          IconButton(
            onPressed: (){},
            icon: Icon(Icons.local_grocery_store),
          )
        ]

      ),
      //endDrawer: , //derecha de la vista
      drawer: Drawer(), //izquierda
    );
  }
}

Drawer(
  child: ListView(
    padding: const EdgeInsets.all(0),
    children: [
      const DrawerHeader(
        decoration: BoxDecoration(
          color: Colors.green,
        ), //BoxDecoration
        child: UserAccountsDrawerHeader(
          decoration: BoxDecoration(color: Colors.green),
          accountName: Text(
            "Abhishek Mishra",
            style: TextStyle(fontSize: 18),
          ),
          accountEmail: Text("abhishekm977@gmail.com"),
          currentAccountPictureSize: Size.square(50),
          currentAccountPicture: CircleAvatar(
            backgroundColor: Color.fromARGB(255, 165, 255, 137),
            child: Text(
              "A",
              style: TextStyle(fontSize: 30.0, color: Colors.blue),
            ), //Text
          ), //circleAvatar
        ), //UserAccountDrawerHeader
      ), //DrawerHeader
      ListTile(
        leading: const Icon(Icons.person),
        title: const Text(' My Profile '),
        onTap: () {
          Navigator.pop(context);
        },
      ),
      ListTile(
        leading: const Icon(Icons.book),
        title: const Text(' My Course '),
        onTap: () {
          Navigator.pop(context);
        },
      ),
      ListTile(
        leading: const Icon(Icons.workspace_premium),
        title: const Text(' Go Premium '),
        onTap: () {
          Navigator.pop(context);
        },
      ),
      ListTile(
        leading: const Icon(Icons.video_label),
        title: const Text(' Saved Videos '),
        onTap: () {
          Navigator.pop(context);
        },
      ),
      ListTile(
        leading: const Icon(Icons.edit),
        title: const Text(' Edit Profile '),
        onTap: () {
          Navigator.pop(context);
        },
      ),
      ListTile(
        leading: const Icon(Icons.logout),
        title: const Text('LogOut'),
        onTap: () {
          Navigator.pop(context);
        },
      ),
    ],
  ),
)