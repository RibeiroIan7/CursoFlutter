import 'package:flutter/material.dart';

class TelaEmpresa extends StatefulWidget {
  const TelaEmpresa({Key? key}) : super(key: key);

  @override
  _TelaEmpresaState createState() => _TelaEmpresaState();
}

class _TelaEmpresaState extends State<TelaEmpresa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Empresa"),
        backgroundColor: Colors.green,
      ),
      body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(16),
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                  Image.asset("imgs/detalhe_empresa.png"),
                  Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Text(
                      "Sobre a Empresa",
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.deepOrange
                        ),
                      ),
                    )
                  ],
                ),
                Padding(
                    padding: EdgeInsets.only(top: 16),
                    child: Text(
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent commodo ligula elementum semper sagittis. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Fusce mollis velit et erat hendrerit feugiat. Vivamus non euismod est. Etiam commodo ipsum mi, id blandit quam porttitor quis. Morbi imperdiet ultrices ligula ac iaculis. Proin sed vestibulum felis. Proin ut metus quis tortor tempus consectetur. Fusce interdum massa in ligula bibendum placerat. Nullam quis porta nisl. Suspendisse auctor imperdiet risus ac lobortis. Quisque tempor ante id tellus malesuada, in ultrices enim convallis. Maecenas laoreet turpis lorem, et posuere risus pellentesque sed. Donec quis risus vestibulum, blandit felis at, viverra nisl. In eleifend nunc nec eros egestas, eget interdum turpis pharetra. Donec a nisi purus. Curabitur aliquet turpis in viverra lobortis. Phasellus dignissim tellus a bibendum tristique. Etiam at libero luctus, sagittis leo sagittis, aliquam dolor. In laoreet felis diam, sed dignissim odio tincidunt eget. In libero sapien, blandit eget sagittis at, tempus nec sem."
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent commodo ligula elementum semper sagittis. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Fusce mollis velit et erat hendrerit feugiat. Vivamus non euismod est. Etiam commodo ipsum mi, id blandit quam porttitor quis. Morbi imperdiet ultrices ligula ac iaculis. Proin sed vestibulum felis. Proin ut metus quis tortor tempus consectetur. Fusce interdum massa in ligula bibendum placerat. Nullam quis porta nisl. Suspendisse auctor imperdiet risus ac lobortis. Quisque tempor ante id tellus malesuada, in ultrices enim convallis. Maecenas laoreet turpis lorem, et posuere risus pellentesque sed. Donec quis risus vestibulum, blandit felis at, viverra nisl. In eleifend nunc nec eros egestas, eget interdum turpis pharetra. Donec a nisi purus. Curabitur aliquet turpis in viverra lobortis. Phasellus dignissim tellus a bibendum tristique. Etiam at libero luctus, sagittis leo sagittis, aliquam dolor. In laoreet felis diam, sed dignissim odio tincidunt eget. In libero sapien, blandit eget sagittis at, tempus nec sem."
                    ),
                )

              ],
            ),
          ),
      ),
    );
  }
}
