import 'package:flutter/material.dart';

class TelaCliente extends StatefulWidget {
  const TelaCliente({Key? key}) : super(key: key);

  @override
  _TelaClienteState createState() => _TelaClienteState();
}

class _TelaClienteState extends State<TelaCliente> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Clientes"),
        backgroundColor: Colors.green,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Image.asset("imgs/detalhe_cliente.png"),
                  Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Text(
                      "Clientes",
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.lightGreen
                      ),
                    ),
                  )
                ],
              ),
              Padding(
                padding: EdgeInsets.only(top: 16),
                child: Image.asset("imgs/cliente1.png")
              ),
              Text(
                "EMpresa de software"
              ),
              Padding(
                  padding: EdgeInsets.only(top: 16),
                  child: Image.asset("imgs/cliente2.png")
              ),
              Text(
                  "Empresa de auditoria"
              ),
            ],
          ),
        ),
      ),
    );
  }
}
