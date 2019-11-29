import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:tdd_flutter/core/error/failures.dart';
import 'package:tdd_flutter/core/usecases/usecases.dart';
import 'package:tdd_flutter/features/number_trivia/domain/entities/number_trivia.dart';
import '../repositories/number_trivia_repository.dart';
import 'package:meta/meta.dart';

class GetConcreateNumberTrivia implements UseCase<NumberTrivia, Params> {
  final NumberTriviaRepository repository;

  GetConcreateNumberTrivia(this.repository);

  @override
  Future<Either<Failure, NumberTrivia>> call(Params params) async {
    return await repository.getConcreateNumberTrivia(params.number);
  }
}

class Params extends Equatable {
  final int number;
  Params({@required this.number}) : super([number]);
}
