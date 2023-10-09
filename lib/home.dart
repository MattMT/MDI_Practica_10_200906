import 'package:flutter/material.dart';
import 'package:movieapp_200906/common/HttpHandler.dart';
import 'package:movieapp_200906/media_list.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState()=> _HomeState();
}

class _HomeState extends State<Home>{
  @override
  Widget build(BuildContext context){
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("MovieApp - 200906", style: TextStyle(fontFamily: 'Kalam-Regular')),
        backgroundColor: Color.fromARGB(255, 127, 0, 178),
        actions: <Widget>[
          new IconButton(
            icon: new Icon(Icons.search, color: Colors.white,),
            onPressed: (){},
          )
        ],
      ),
      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[

            new DrawerHeader(child: new Material()),
        new ListTile(
          title: new Text("Peliculas", style: TextStyle(fontFamily: 'Kalam-Regular'),),
          trailing: new Icon(Icons.local_movies, color: Color.fromARGB(255, 198, 157, 210)),
        ),
        new Divider(
          height: 5.0,
        ),
        ListTile(
          title: new Text("Televisión", style: TextStyle(fontFamily: 'Kalam-Regular'),),
          trailing: new Icon(Icons.live_tv, color: Color.fromARGB(255, 198, 157, 210)),
        ),
        new Divider(
          height: 5.0,
        ),
        new ListTile(
          title: new Text("Cerrar", style: TextStyle(fontFamily: 'Kalam-Regular'),),
          trailing: new Icon(Icons.close, color: Color.fromARGB(255, 198, 0, 40)),
          onTap: ()=> Navigator.of(context).pop(),
        ),
          ],
        )
        
      ),
      body: new PageView(
        children: <Widget>[
          new MediaList()
        ],
      ),
      bottomNavigationBar: new BottomNavigationBar(
        items: _getFooterItems(),
      ),
    );
  }
    List<BottomNavigationBarItem> _getFooterItems()
    {
      return[
        new BottomNavigationBarItem(
          icon: new Icon(Icons.thumb_up, color: Color.fromARGB(255, 127, 0, 178)), label:("Populares")
        ),
        new BottomNavigationBarItem(
          icon: new Icon(Icons.update, color: Color.fromARGB(255, 127, 0, 178),), label:("Proximamente")
        ),
        new BottomNavigationBarItem(
          icon: new Icon(Icons.star, color: Color.fromARGB(255, 127, 0, 178),), label:("Mejor valoradas")
        ),
      ];
    }
  }