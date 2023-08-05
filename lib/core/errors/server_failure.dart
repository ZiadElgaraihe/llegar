import 'package:dio/dio.dart';

class ServerFailure{
  String errMessage;

  ServerFailure({required this.errMessage});

  factory ServerFailure._badResponse({
    required int statusCode,
    required dynamic response,
  }) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerFailure(errMessage: response['message']);
    } else if (statusCode == 404) {
      return ServerFailure(errMessage: 'Page not founded');
    } else if (statusCode == 500) {
      return ServerFailure(
        errMessage: 'Internal server error, Please try later',
      );
    } else {
      return ServerFailure(
        errMessage: 'Oops unexpected error occurs, Please try again',
      );
    }
  }

  factory ServerFailure.fromDioException({
    required DioException dioException,
  }) {
    switch (dioException.type) {
      //connection between client and server timeout
      case DioExceptionType.connectionTimeout:
        return ServerFailure(
          errMessage: 'Server connection timeout. Please try again.',
        );
      //the client sends data to the server,
      //but the server does not respond within the specified time limit
      case DioExceptionType.sendTimeout:
        return ServerFailure(
          errMessage:
              'Sending data to server takes too much time, please try again',
        );
      //the client is waiting to receive data from the server,
      // but the server does not send a response within the specified time limit
      case DioExceptionType.receiveTimeout:
        return ServerFailure(
          errMessage:
              'Receiving data from server takes too much time, please try again',
        );
      //there is an error in the network
      case DioExceptionType.connectionError:
        return ServerFailure(errMessage: 'No internet connection');
      //the request cancelled by the user
      case DioExceptionType.cancel:
        return ServerFailure(
            errMessage: 'Request cancelled. Please try again.');
      //the error have a response
      case DioExceptionType.badResponse:
        return ServerFailure._badResponse(
          statusCode: dioException.response!.statusCode!,
          response: dioException.response,
        );
      //there is a security or privacy issues
      case DioExceptionType.badCertificate:
        return ServerFailure(
          errMessage:
              'Your connection is not private. The server\'s SSL certificate is not valid. Proceed with caution',
        );
      //the default errMessage
      default:
        return ServerFailure(
          errMessage: 'Oops unexpected error occurs, Please try again',
        );
    }
  }
}
