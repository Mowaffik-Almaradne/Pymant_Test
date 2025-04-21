import 'package:fpdart/fpdart.dart';
import 'package:new_experinse/core/error/failure.dart';

typedef FutureList<T> = Future<Either<Failure, List<T>>>;