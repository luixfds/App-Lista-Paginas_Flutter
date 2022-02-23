import 'package:flutter/material.dart';


class Cadastro extends StatefulWidget {
  const Cadastro({Key? key}) : super(key: key);

  @override
  _CadastroState createState() => _CadastroState();
}

class _CadastroState extends State<Cadastro> {
  bool x = false;
  bool sim = false;
  String s = 'f';


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(230, 230, 230, 100),
      appBar: AppBar(
        foregroundColor: Colors.amber,
        backgroundColor: Colors.white,
        title: Text('Cadastro'),),
      body: SingleChildScrollView(
        child: Padding(
            padding: EdgeInsets.all(30),
            child:Column(
              children: [
                Container(
                  color: Colors.white70,
                  child: TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Email',
                    ),
                  ),
                ),
                Card(
                  child: CheckboxListTile(
                      secondary: Icon(Icons.developer_mode),
                      title: Text('Beta'),
                      subtitle: Text('Habilitar o modo Beta tester para acesso a versões antecipadas'),
                      value: x,
                      onChanged: (bool?  valor){
                        setState(() {
                          x = valor!;
                        });
                      }),
                ),
                RadioListTile(
                    title: Text('Feminino'),
                    value: 'f', groupValue: s, onChanged: (String? valor){
                  setState(() {
                    s = valor!;
                  });
                }),
                RadioListTile(
                    title: Text('Masculino'),
                    value: 'm', groupValue: s, onChanged: (String? valor){
                  setState(() {
                    s = valor!;
                  });
                }),
                Row(
                  children: [
                    Switch(value: sim, onChanged: (valor){
                      setState(() {
                        sim = valor;
                      });
                    }),
                    Text('Manter conexão')
                  ],
                ),
                Container(
                    color: Colors.deepPurpleAccent,
                    width: EdgeInsetsGeometry.infinity.horizontal,
                    child: TextButton(
                      onPressed: (){},
                      child: Text('Concluir', style: TextStyle(color: Colors.white),),
                    )
                ),
              ],
            )
        )
        ,
      ),
    );;
  }
}
