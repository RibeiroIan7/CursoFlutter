import 'package:flutter/material.dart';
import 'dart:math';

void main(){
  runApp(MaterialApp(
    home: Home(),
    debugShowCheckedModeBanner: false,
  ));
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  var _frases = [
    "As pessoas costumam dizer que a motivação não dura sempre. Bem, nem o efeito do banho, por isso recomenda-se diariamente. - Zig Ziglar",
    "A persistência é o caminho do êxito. - Charles Chaplin",
    "Motivação é a arte de fazer as pessoas fazerem o que você quer que elas façam porque elas o querem fazer. - Dwight Eisenhower",
    "Toda ação humana, quer se torne positiva ou negativa, precisa depender de motivação. - Dalai Lama",
    "No meio da dificuldade encontra-se a oportunidade. - Desconhecido",
    "Eu faço da dificuldade a minha motivação. A volta por cima vem na continuação. - Charlie Brown Jr",
    "A verdadeira motivação vem de realização, desenvolvimento pessoal, satisfação no trabalho e reconhecimento. - Frederick Herzberg",
    "Pedras no caminho? Eu guardo todas. Um dia vou construir um castelo. - Nemo Nox",
    "É parte da cura o desejo de ser curado. - Sêneca",
    "Tudo o que um sonho precisa para ser realizado é alguém que acredite que ele possa ser realizado. - Roberto Shinyashiki",
    "O que me preocupa não é o grito dos maus. É o silêncio dos bons. - Martin Luther King",
    "Imagine uma nova história para sua vida e acredite nela. - Paulo Coelho",
    "O insucesso é apenas uma oportunidade para recomeçar com mais inteligência. - Henry Ford",
    "Você precisa fazer aquilo que pensa que não é capaz de fazer. - Eleanor Roosevelt",
    "O sucesso é ir de fracasso em fracasso sem perder o entusiasmo. - Desconhecido",
    "Só se pode alcançar um grande êxito quando nos mantemos fiéis a nós mesmos. - Friedrich Nietzsche",
    "Nossa maior fraqueza está em desistir. O caminho mais certo de vencer é tentar mais uma vez. - Thomas Edison",
    "Coragem é a resistência ao medo, domínio do medo, e não a ausência do medo. - Mark Twain",
    "Quem quer vencer um obstáculo deve armar-se da força do leão e da prudência da serpente. - Píndaro",
    "Quer você acredite que consiga fazer uma coisa ou não, você está certo. - Henry Ford",
    "Um bom começo é a metade. - Aristóteles",
    "Jamais desista das pessoas que ama. Jamais desista de ser feliz. Lute sempre pelos seus sonhos. Seja profundamente apaixonado pela vida. Pois a vida é um espetáculo imperdível. - Augusto Cury",
    "Não deixe as coisas que você não pode fazer impedi-lo de fazer as coisas que pode. - John Wooden",
    "Você tem de agir. E você tem que estar disposto a fracassar... se você tem medo de fracassar, não irá muito longe. - Steve Jobs"
  ];

  var _fraseGerada = "Clique abaixo para gerar uma frase!";

  void _geraFrase(){
    setState(() {
      _fraseGerada = _frases[Random().nextInt(_frases.length)];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Frases do dia"),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(16),
          //width: double.infinity,
          /*decoration: BoxDecoration(
              border: Border.all(width: 3, color: Colors.amber)
          ),*/
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Image.asset("images/logo.png"),
              Text(
                _fraseGerada,
                textAlign: TextAlign.justify,
                style: TextStyle(
                    fontSize: 25,
                    fontStyle: FontStyle.italic,
                    color: Colors.black
                ),
              ),
              RaisedButton(
                child: Text(
                  "Nova Frase",
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                  ),
                ),
                color: Colors.green,
                onPressed: _geraFrase,
              )
            ],
          ),
        ),
      ),
    );
  }
}
