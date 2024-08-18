import 'dart:io';
import 'dart:math';
enum Escolhas {pedra, papel, tesoura}
void main(){
  final random = new Random();
  var opcoes = [];
  for(int i = 0; i < 3; i++){
    Escolhas escolhas = Escolhas.values[i];
    opcoes.add(escolhas.name);
  }
  while (true){
    stdout.writeln("Escolher entre(Pedra, Papel, Tesoura ou Sair): ");
    var jogador = stdin.readLineSync()?.toLowerCase();
    if(jogador == "sair") break;
      var computador = opcoes[random.nextInt(opcoes.length)].toLowerCase();
    if(opcoes.contains(jogador)){
      print("$jogador x $computador");
      switch (jogador){
        case "pedra":
          if(computador == "pedra")print("Empate!");
          else if(computador == "papel")print("Perdeu!");
          else print("Ganhou!");
        case "papel":
          if(computador == "papel")print("Empate!");
          else if(computador == "tesoura")print("Perdeu!");
          else print("Ganhou!");
        case "tesoura":
          if(computador == "tesoura")print("Empate!");
          else if(computador == "pedra")print("Perdeu!");
          else print("Ganhou!");
      }
    }
    else print("Opção inválida \n$jogador\n$computador\n$opcoes");
  }
}