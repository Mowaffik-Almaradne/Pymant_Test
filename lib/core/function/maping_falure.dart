import 'package:new_experinse/core/error/failure.dart';
import 'package:new_experinse/core/resource/failure_manger.dart';

class FailureMessage {
  final String message;
  final String? details;
  final int statusCode;

  FailureMessage(
      {required this.message, required this.statusCode, this.details});
}

FailureMessage mapFailureToMessage({
  required Failure failure,
}) {
  switch (failure.runtimeType) {
    case ServerFailure _ :
      ServerFailure serverFailure = failure as ServerFailure;
      {
        {
          switch (serverFailure.response.error.code) {
            case 503:
              return FailureMessage(
                statusCode: serverFailure.response.error.code ?? 0,
                message: FaluireManger.pleaseTryLater,
              );
            case 500:
              return FailureMessage(
                details: serverFailure.response.error.details,
                statusCode: serverFailure.response.error.code ?? 0,
                message: serverFailure.response.error.message ?? "",
              );
            case 413:
              return FailureMessage(
                statusCode: serverFailure.response.error.code ?? 0,
                message: FaluireManger
                    .thePageWasNotDisplayedBecauseTheRequestEntityistooLarge,
              );
            case 404:
              return FailureMessage(
                statusCode: serverFailure.response.error.code ?? 0,
                message: serverFailure.response.error.message ?? "",
              );
            case 400:
              return FailureMessage(
                statusCode: serverFailure.response.error.code ?? 0,
                message: serverFailure.response.error.message ?? "",
              );

            case -1:
              return FailureMessage(
                statusCode: serverFailure.response.error.code ?? 0,
                message: FaluireManger.conectionTimeOut,
              );
            default:
              return FailureMessage(
                statusCode: serverFailure.response.error.code ?? 0,
                message: FaluireManger.connectionError,
              );
          }
        }
      }
    case EmptyCacheFailure _:
      {
        return FailureMessage(
            statusCode: 0, message: FaluireManger.errorEmptyCach);
      }
    case OfflineFailure _:
      {
        return FailureMessage(
            statusCode: 0, message: FaluireManger.pleaseCheckTheNetwork);
      }
    default:
      {
        return FailureMessage(
            statusCode: 0, message: FaluireManger.unHandledFailure);
      }
  }
}
