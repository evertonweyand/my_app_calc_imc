import 'dart:convert';
import 'dart:io';

String readConsoleString(String label) {
  print('$label ');
  var inputUser = stdin.readLineSync(encoding: utf8) ?? "";
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

void imcPrintResult(double imcValue) {
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
  print('A classificação de seu IMC é: $imcClassificacao (Valor: $imcValue)');
}

void imcPrintTable() {
  print('*************************************************************');
  print('* IMC                CLASSIFICAÇÃO         OBESIDADE (GRAU) *');
  print('* Menor que 18,50       Magreza                  0          *');
  print('* Entre 18.5 e 24.9     Normal                   0          *');
  print('* Entre 25.0 e 29.9     Sobrepeso                I          *');
  print('* Entre 30.0 e 39.9     Obesidade                II         *');
  print('* Acima de 40.0         Obesidade Grave          III        *');
  print('*************************************************************');
}

double imc_calc(double weight, double height) {
  return weight / (height * height);
}
