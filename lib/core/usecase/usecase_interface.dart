// core/usecase/usecase_interface.dart
// 'UseCaseInterface' é uma classe abstrata que define uma interface para um casdo de uso.
// Ela é genérica, o que segnifica que pode trabalhar com qualquer tipo de objeto/entrada e saída ('Type' e 'Params').
import 'package:marketgo/core/typedefs/types.dart';

abstract interface class UsecaseInterface<Type, Params> {
  // O método 'call' é uma operação assíncrona que recebe um parâmetro do tipo 'Params' e retorna um objeto 'Future<Either<Failure, Type>>'

  // 'Future' é uma maneira de Dart lidar com operações assíncronas. Ele representa um valor potencial ou erro que estará disponível em algum momento no futuro.
  //
  //'Either' é um tipo que pode conter um valor de dois tipos possíveis. Neste caso, 'Failure' ou 'Type'.
  // É comumente usado em programação funcional para lidar com operações que podem falhar.
  // Aqui, 'Failure' representa um erro, enquanto 'Type' seria o tipo de resultado esperado se a operação for bem-sucedida.
  //
  Future<Output<Type>> call(Params params);
}

class NoParams {}