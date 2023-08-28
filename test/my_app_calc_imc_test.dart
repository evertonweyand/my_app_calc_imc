import 'package:test/test.dart';
import 'package:my_app_calc_imc/functions.dart' as functions;

void main() {
  test('Calcular o valor do IMC --> imcCalc', () {
    expect(functions.imcCalc(64, 1.76), equals(20.66115702479339));
  });

  test('Calcular o valor do IMC com argumento weight igual a zero', () {
    expect(() => functions.imcCalc(0, 1.76),
        throwsA(TypeMatcher<ArgumentError>()));
  });

  test('Calcular o valor do IMC com argumento height igual a zero', () {
    expect(
        () => functions.imcCalc(64, 0), throwsA(TypeMatcher<ArgumentError>()));
  });
}
