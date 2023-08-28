import 'package:my_app_calc_imc/classes/People.dart';
import 'package:my_app_calc_imc/functions.dart';

void my_app_calc_imc() {
  print('*************************************************************');
  print('*          Cálculo I.M.C (Índice de Massa Corpórea)         *');
  print('*************************************************************');

  var name = readConsoleName('Digite seu nome...:');
  var weight = readConsoleDouble('Digite seu peso...:');
  var height = readConsoleDouble('Digite sua altura.:');

  People people = People(name, weight, height);

  people.printMyIMC();

  print('');
  print('');
  print('*                            FIM                            *');
  print('*************************************************************');
}
