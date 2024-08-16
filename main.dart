import 'dart:io';
import 'dart:math';
enum Escolhas {Pedra, Papel, Tesoura}
void main(){
  final random = new Random();
  final opcoes = Escolhas.values;
  while (true){
    stdout.writeln("Escolher entre(Pedra, Papel, Tesoura ou Sair): ");
    var jogador = stdin.readLineSync();
    if(jogador == "Sair") break;
      var computador = opcoes[random.nextInt(opcoes.length)];
    if(opcoes.contains(jogador)){
      print("$jogador x $computador");
      switch (jogador){
        case "Pedra":
          if(computador == "Pedra")print("Empate!");
          else if(computador == "Papel")print("Perdeu!");
          else print("Ganhou!");
        case "Papel":
          if(computador == "Papel")print("Empate!");
          else if(computador == "Tesoura")print("Perdeu!");
          else print("Ganhou!");
        case "Tesoura":
          if(computador == "Tesoura")print("Empate!");
          else if(computador == "Pedra")print("Perdeu!");
          else print("Ganhou!");
      }
    }
    else print("Opção inválida \n$jogador\n$computador\n$opcoes");
  }
}