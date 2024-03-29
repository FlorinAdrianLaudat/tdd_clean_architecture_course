import 'package:dartz/dartz.dart';
import 'package:tdd_clean_architecture_course/core/error/failures.dart';
import 'package:tdd_clean_architecture_course/core/usecases/usecase.dart';
import 'package:tdd_clean_architecture_course/feature/number_trivia/domain/entities/number_trivia.dart';
import 'package:tdd_clean_architecture_course/feature/number_trivia/domain/repositories/number_trivia_repository.dart';

class GetRandomNumberTrivia extends UseCase<NumberTrivia, NoParams> {
  final NumberTriviaRepository repository;

  GetRandomNumberTrivia(this.repository);

  @override
  Future<Either<Failure, NumberTrivia>> call(NoParams params) async {
    return await repository.getRandomNumberTrivia();
  }
}