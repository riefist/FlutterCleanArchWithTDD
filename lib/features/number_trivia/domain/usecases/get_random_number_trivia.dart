import 'package:clean_arch_tdd_reso_coder/features/core/error/failures.dart';
import 'package:clean_arch_tdd_reso_coder/features/core/usecase/usecase.dart';
import 'package:clean_arch_tdd_reso_coder/features/number_trivia/domain/entities/number_trivia.dart';
import 'package:clean_arch_tdd_reso_coder/features/number_trivia/domain/repositories/number_trivia_repository.dart';
import 'package:dartz/dartz.dart';

class GetRandomNumberTrivia implements UseCase<NumberTrivia, NoParams>{
  final NumberTriviaRepository repository;

  GetRandomNumberTrivia(this.repository);

  @override
  Future<Either<Failure, NumberTrivia>> call(NoParams params) async {
    return await repository.getRandomNumberTrivia();
  }

}