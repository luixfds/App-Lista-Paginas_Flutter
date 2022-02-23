import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(230, 230, 230, 100),
      appBar: AppBar(
        actions: [
          IconButton(onPressed: ()=>Navigator.pushNamed(context, '/lista'), icon: Icon(Icons.history_toggle_off)),
        ],
        title: Text('Home'),
        foregroundColor: Colors.amber,
        backgroundColor: Colors.white,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Container(
        height: 65,
        width: 65,
        child: FloatingActionButton(
          backgroundColor: Colors.amber,
          onPressed: (){},
          child: Icon(Icons.airplanemode_on_rounded),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        color: Colors.white,
        child: Padding(
          padding: EdgeInsets.all(8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(onPressed: (){}, icon: Icon(Icons.water_damage, size: 25, color: Colors.amber,)),
              IconButton(onPressed: (){}, icon: Icon(Icons.wb_sunny_sharp, size: 25, color: Colors.amber,)),
              SizedBox(width: 10),
              IconButton(
                  onPressed: (){},
                  icon: Icon(Icons.workspaces_filled, size: 25, color: Colors.amber,)),
              IconButton(
                  onPressed: ()=>Navigator.pushNamed(context, '/cadastro'),
                  icon: Icon(Icons.account_circle, size: 25, color: Colors.amber,)),
            ],
          ),
        ),
      ),
    );
  }
}