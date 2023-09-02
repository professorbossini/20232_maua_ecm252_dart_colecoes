void main() {
  //collection-for
  var nomes1 = ['Ana', 'Pedro'];

  var nomes2 = [
    'Cristina',
    'João',
    for (final nome in nomes1) nome,
  ];
  print(nomes2);

  var nomes3 = [
    'Ana Maria',
    ...nomes1, //operador spread,
    ...nomes2, //operador spread
  ];

  //collection-if
  var idadePedro = 17;
  var idadeMaria = 19;
  var idadeJoao = 22;
  //lista
  var somenteDeMaior = [
    'Cristina',
    if (idadePedro >= 18) 'Pedro' else 'nada',
    if (idadeMaria >= 18) 'Maria' else 'nada',
    idadeJoao >= 18 ? 'João' : 'nada',
  ];

  print(somenteDeMaior);

  //coleções
  //titulo, genero, notas
  var filme = {
    'titulo': 'Titanic',
    'genero': "Romance",
    'notas': [5, 1, 2, 5]
  };

  var filme2 = {
    'titulo': "Star Wars",
    'genero': "Ficção Científica",
    'notas': [5, 5]
  };

  var filmes = [filme, filme2];

  print(filmes);
}

// import 'dart:core'; //não precisa

// void main() {
//   //keys, values, entries
//   var pessoa = <String, Object>{
//     'nome': 'Ana',
//     'idade': 18,
//   };

//   //keys
//   var chaves = pessoa.keys;
//   print(chaves.runtimeType);
//   for (final chave in chaves) {
//     print(chave);
//     print(pessoa[chave]);
//   }

//   //values
//   var valores = pessoa.values;
//   for (final valor in valores) {
//     print(valor);
//   }

//   //entries
//   var entries = pessoa.entries;
//   for (final entry in entries) {
//     print(entry);
//     print(entry.key);
//     print(entry.value);
//   }

//   //type annotation
//   // var pessoa = <String, dynamic>{'nome': "João"};
//   // print(pessoa['nome'].runtimeType);

//   // var nome = pessoa['nome'] as int;
//   // print(nome.toUpperCase());

//   // Map <String, Object> pessoa = {
//   //   'nome': 'Ana',
//   //   'idade': 19
//   // };

//   // // print(pessoa.nome); //não vale
//   // print(pessoa['nome']);
//   // print(pessoa['altura']);
// }

//   // Map <dynamic, dynamic> pessoa2 = {

//   // };

//   // var teste = {
//   //   Girafa(): Pessego()
//   // };
//   // var lembretes = {
//   //   1: 'Fazer café',
//   //   2: 'Ver um filme'
//   // };
//   // var pessoa = {
//   //   'nome': 'Ana',
//   //   'idade': 22,
//   //   'altura': 1.8,
//   //   'deMaior': true
//   // }; //mapa
//   // print(pessoa.runtimeType);

//   // var pessoa2 = {
//   //   'idade': 29,
//   //   'altura': 1.8
//   // };
//   // print(pessoa2.runtimeType);
// // }

// // // import 'dart:core'; //java.lang;
// // // //import java.lang.*;

// // void main() {
// //   var portugues = {'Brasil', 'Portugal'};
// //   var europa = {'Espanha', 'Portugal', 'Alemanha'};
// //   //todos os países a menos daqueles que são Europeus e em que se fala português simultaneamente
// //   print(portugues.union(europa).difference(portugues.intersection(europa)));

//   // var A = {1, 2, 3, 4, 5, 6};
//   // var B = {1, 3, 7};
//   // print(A.union(B)); // {1, 2, 3, 4, 5, 6, 7}
//   // print(A.intersection(B)); // {1, 3}
//   // print(A.difference(B));//{2, 4, 5, 6}
//   // print(B.difference(A));//{7}
//   // print(A.difference(A));//{}
//   // var numeros = {1, 2, 3};
//   // // print(numeros[0]);//não dá
//   // print(numeros.elementAt(0)); //isso sim
//   // for (final numero in numeros) {
//   //   print(numero);
//   // }
//   // var paises = {'Brasil', 'Brasil'};
//   // print(paises);
//   //Set
//   //{1, 2} = {2, 1} = {1, 1, 1, 1, 1, 2, 1, 2, 1}
//   // var nomes = {'Ana', 'João'}; //Set<String>
//   // var teste = {}; //Map<dynamic, dynamic>
//   // var outroTeste = <String>{}; //Set
//   // var outroTeste2 = <String, String>{};//Map
//   // var tupla = ('Ana', 1, true);
//   // tupla.$1 = "ANa Maria";
//   //tuplas ou records
//   // print(tupla.$2);
//   // print(tupla.$4);
//   // print(tupla);
//   // print(tupla.runtimeType);

// // // class Pessoa {
// // //   late String nome;
// // //   late int idade;
// // // }

// // void main() {
// //   // List<Pessoa> pessoas = []
// //   var lista1 = [1, 2];
// //   // lista1.insert(1, null);
// //   var lista2 = [];
// //   // lista2.insert(0, null);
// //   List<int> lista3 = [];
// //   // lista3.add(null);
// //   // List<int?> lista4 = [1, null, 2]; //[1, null, 2]
// //   // List<int?> lista5 = null;
// //   // List<int>? lista6;
// //   // print(lista6);
// //   // List<int> lista7;
// //   // print(lista7);
// //   // List<int?>? lista8 = [null, 1, "a"];

// //   // final nomesComFinal = ["Ana", "Pedro"];
// //   // print(nomesComFinal.runtimeType);
// //   // const nomesComConst = ['Ana'];
// //   // print(nomesComConst.runtimeType);
// //   // // nomes = [];
// //   // nomesComConst[0] = 'Ana Maria';
// //   // print(nomesComConst);
// //   // List<List<String?>?>? isso = [[null]];
// // }

// // // import 'dart:io';
// // // import 'dart:math';

// // // void main() {
// // //   var jogoUsuario = <int>[];
// // //   //permitir que o usuário jogue, cuidando da repetição
// // //   while (jogoUsuario.length < 6) {
// // //     stdout.writeln('Escolha o próximo número');
// // //     var numero = int.parse(stdin.readLineSync()!);
// // //     if (numero < 1 || numero > 60) {
// // //       stdout.writeln('Você não pode escolher $numero');
// // //       continue;
// // //     }
// // //     if (jogoUsuario.contains(numero)) {
// // //       stdout.writeln("O número ${numero} já foi escolhido");
// // //       continue;
// // //     }
// // //     jogoUsuario.add(numero);
// // //   }
// // //   //o método sort opera in place
// // //   //ele altera a estrutura da lista
// // //   //não gera outra ordenada
// // //   jogoUsuario.sort();
// // //   stdout.writeln(jogoUsuario);
// // //   //sortear seis números, sem repetição
// // //   var gerador = Random();
// // //   List<int> jogoSorteado = [];
// // //   while (jogoSorteado.length < 6) {
// // //     var numero = gerador.nextInt(60) + 1;
// // //     if (!jogoSorteado.contains(numero)) {
// // //       jogoSorteado.insert(0, numero);
// // //     }
// // //   }
// // //   jogoSorteado.sort();
// // //   //verificar quais itens o jovem acertou
// // //   jogoUsuario.forEach((numero) {
// // //     if (jogoSorteado.contains(numero)) {
// // //       stdout.writeln('Você acertou $numero');
// // //     }
// // //   });
// // //   //se ele ganhou, avise
// // //   if (jogoUsuario.every((numero) => jogoSorteado.contains(numero))) {
// // //     print("Parabéns, você ganhou!");
// // //   }
// // // }

// // // // void main(List<String> arguments) {
// // // //   print(arguments);

// // // //   //type annotation
// // // //   // var nomes = <String> [];
// // // //   // List nomes = ['Ana'];
// // // //   // nomes.add(1);
// // // //   //listas
// // // //   // List<String> nomes = ['Ana', 'Pedro'];
// // // //   // nomes.add('Cristina'); //adiciona no final
// // // //   // print(nomes);
// // // //   // nomes.insert(0, 'Maria');
// // // //   // print(nomes);
// // // //   // nomes.insert(nomes.length, 'João');
// // // //   // nomes.insert(15, 'Pedro Silva');
// // // //   // var nomes = []; //ArrayList
// // // //   // // print(nomes.first);
// // // //   // print(nomes.firstOrNull);
// // // //   // print(nomes.isEmpty);

// // // //   //for
// // // //   // for (var i = 0; i < nomes.length; ) {
// // // //   //   print(nomes[i]);
// // // //   // }

// // // //   //for each
// // // //   // for (var nome in nomes) {
// // // //   //   print(nome);
// // // //   // }

// // // //   // print(nomes[0]);
// // // //   // print(nomes[2]);
// // // //   // print(nomes[-1]);
// // // //   // print(nomes);
// // // //   // print(nomes.toString());
// // // // }
