import 'package:flutter/material.dart';


class Lista extends StatefulWidget {
  const Lista({Key? key}) : super(key: key);

  @override
  _ListaState createState() => _ListaState();
}

class _ListaState extends State<Lista> {


  List dados = [];

  void mostraDados(){
    Map<String, dynamic> map = Map();

    for(int i = 0; i < 4; i++){
      map['titulo'] = 'Name';
      map['subtitulo'] = 'Descrição';
      dados.add(map);
    }
  }


  @override
  Widget build(BuildContext context) {
    dados = [];
    mostraDados();
    return Scaffold(
      backgroundColor: Color.fromRGBO(230, 230, 230, 100),
      appBar: AppBar(title: Text('Historico de Viagens'),
        foregroundColor: Colors.amber,
        backgroundColor: Colors.white,),
      body: ListView.builder(
          itemCount: dados.length,
          itemBuilder: (context, indice){
            return Card(
              child: ListTile(
                leading: Icon(Icons.verified, color: Colors.blue,),
                onTap: (){
                  showDialog(context: context, builder: (context){
                    return AlertDialog(
                      title: Row(children: [
                        Icon(Icons.domain_verification_sharp),
                        Text('${dados[indice]['titulo']}')
                      ],),
                      titlePadding: EdgeInsets.all(25),
                      content: Text('${dados[indice]['subtitulo']}'),
                      contentPadding: EdgeInsets.all(20),
                      actions: [
                        TextButton(onPressed: (){}, child: Text('Limpar')),
                        TextButton(onPressed: ()=>Navigator.pop(context), child: Text('Fechar')),
                      ],
                    );
                  });
                },
                title: Text('${dados[indice]['titulo']}'),
                subtitle: Text('${dados[indice]['subtitulo']}'),
              ),
            );
      }),
    );
  }
}
