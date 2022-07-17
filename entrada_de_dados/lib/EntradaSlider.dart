import 'package:flutter/material.dart'; 

class EntradaSlider extends StatefulWidget {
  const EntradaSlider({Key? key}) : super(key: key);

  @override
  _EntradaSliderState createState() => _EntradaSliderState();
}

class _EntradaSliderState extends State<EntradaSlider> {

  double _valorSelecionado = 5;
  String label = "Valor Selecionado";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Entrada de dados"),
      ),
      body: Container(
        padding: EdgeInsets.all(60),
        child: Column(
          children: <Widget>[
            Slider(
                value: _valorSelecionado,
                min: 0,
                max: 10,
                label: label,
                divisions: 5,
                activeColor: Colors.red,
                inactiveColor: Colors.black26,
                onChanged: (double novoValor){
                  setState(() {
                    _valorSelecionado = novoValor;
                    label = novoValor.toString();
                  });
                  print("Valor selecionado: " + novoValor.toString());
                }
            ),
            RaisedButton(
                child: Text(
                  "Salvar",
                  style: TextStyle(
                      fontSize: 20
                  ),
                ),
                onPressed: (){
                  print("Valor selecionado: " + _valorSelecionado.toString());
                }
            )
          ],
        ),
      ),
    );
  }
}
