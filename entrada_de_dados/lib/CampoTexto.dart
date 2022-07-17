import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CampoTexto extends StatefulWidget {
  const CampoTexto({Key? key}) : super(key: key);

  @override
  _CampoTextoState createState() => _CampoTextoState();
}

class _CampoTextoState extends State<CampoTexto> {

  TextEditingController _textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Entrada de dados"),
      ),
      body: Column(
        children: <Widget>[
          Padding(
              padding: EdgeInsets.all(32),
              child: TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: "Digite um valor"
                ),
                //enabled: false,
                //maxLength: 2,
                //maxLengthEnforced: false,
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.green
                ),
                //obscureText: true,
                /*onChanged: (String s){
                  print("Valor digitado: " + s);
                },*/
                onSubmitted: (String s){
                  print("Valor digitado: " + s);
                },
                controller: _textEditingController,
              ),
          ),
          RaisedButton(
              child: Text("Salvar"),
              color: Colors.lightGreen,
            onPressed: (){
              print("Valor digitado: " + _textEditingController.text);
            },
          ),
        ],
      ),
    );
  }
}
