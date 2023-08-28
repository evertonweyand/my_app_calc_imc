import 'dart:convert';
import 'dart:io';

String readConsoleString(String label) {
  print('$label ');
  var inputUser = stdin.readLineSync(encoding: utf8) ?? "";
  return inputUser;
}

String readConsoleName(String label) {
  String inputUser = "";
  do {
    inputUser = readConsoleString(label);
  } while (inputUser == '');
  return inputUser;
}

double readConsoleDouble(String label) {
  String inputUser = readConsoleString(label);
  double number = double.tryParse(inputUser) ?? -99;
  if (inputUser.toUpperCase() == 'S') {
    number = 0.00;
  } else {
    while (number == -99) {
      print('O valor [$inputUser] digitado é inválido para "$label"');
      print('Digite S caso queira sair ou digite um valor válido !');
      number = readConsoleDouble(label);
    }
  }
  return number;
}

void imcPrintResult(double imcValue, [String? peopleName]) {
  String imcClassificacao = '';
  switch (imcValue) {
    case > 40:
      imcClassificacao = 'Obesidade Grave (Grau III)';
      break;
    case >= 30:
      imcClassificacao = 'Obesidade (Grau II)';
      break;
    case >= 25:
      imcClassificacao = 'Sobrepeso (Grau I)';
      break;
    case >= 18.50:
      imcClassificacao = 'Normal';
    default:
      imcClassificacao = 'Magreza';
  }
  if (peopleName != null && peopleName.isNotEmpty) {
    print(
        '${peopleName[0].toUpperCase() + peopleName.substring(1).toLowerCase()} a classificação de seu IMC é: $imcClassificacao (Valor: ${imcValue.toStringAsFixed(4)})');
  } else {
    print(
        'A classificação de seu IMC é: $imcClassificacao (Valor: ${imcValue.toStringAsFixed(4)})');
  }
}

void imcPrintTable() {
  print('');
  print('***************** Tabela de Referência **********************');
  print('*                                                           *');
  print('* IMC                CLASSIFICAÇÃO         OBESIDADE (GRAU) *');
  print('* Menor que 18,50       Magreza                  0          *');
  print('* Entre 18.5 e 24.9     Normal                   0          *');
  print('* Entre 25.0 e 29.9     Sobrepeso                I          *');
  print('* Entre 30.0 e 39.9     Obesidade                II         *');
  print('* Acima de 40.0         Obesidade Grave          III        *');
  print('*                                                           *');
  print('*************************************************************');
}

double imcCalc(double weight, double height) {
  if (weight == 0) {
    throw ArgumentError.value(0);
  }
  if (height == 0) {
    throw ArgumentError.value(0);
  }
  return weight / (height * height);
}
