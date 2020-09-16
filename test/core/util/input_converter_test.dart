import 'package:clean_arch_tdd_reso_coder/features/core/util/input_converter.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';

void main(){
  InputConverter inputConverter;

  setUp((){
    inputConverter = InputConverter();
  });

  group('stringToUnsignedInt', (){
    test('should return an integer when the string represents an unsigned intger', () async {
      final str = '123';
      final result = inputConverter.stringToUnsignedInterger(str);
      expect(result, Right(123));
    });

    test('should return a failure when the string is not an integer', () async {
      final str = 'abc';
      final result = inputConverter.stringToUnsignedInterger(str);
      expect(result, Left(InvalidInputFailure()));
    });

    test('should return a failure when the string is a negative interger', () async {
      final str = '-123';
      final result = inputConverter.stringToUnsignedInterger(str);
      expect(result, Left(InvalidInputFailure()));
    });

  });
}