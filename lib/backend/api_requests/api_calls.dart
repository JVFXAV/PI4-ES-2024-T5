import 'dart:convert';
import 'package:flutter/foundation.dart';

import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start ServicosJa  API Group Code

class ServicosJaAPIGroup {
  static String getBaseUrl() =>
      'https://gw.apiflow.online/api/0af48e85cad74a2185e3d4919770ab22';
  static Map<String, String> headers = {
    'Authorization':
        'Bearer YzkzOWYyYzVjNDk4M2Y5M2YxNjkwN2UwNDAzNjlkNTA6MjkwZWNmNWM5ZThhNGMxNWY0ZTBkZDUzOWUzMWFlNjM=',
  };
  static ListUserCall listUserCall = ListUserCall();
  static CreateNewUserCall createNewUserCall = CreateNewUserCall();
  static CreateNewProfessionalCall createNewProfessionalCall =
      CreateNewProfessionalCall();
  static GetProfessionalByProfissaoCall getProfessionalByProfissaoCall =
      GetProfessionalByProfissaoCall();
  static UpdateUserCall updateUserCall = UpdateUserCall();
  static ReplaceUserCall replaceUserCall = ReplaceUserCall();
}

class ListUserCall {
  Future<ApiCallResponse> call({
    String? filter = '',
    String? sort = '',
    int? skip,
    int? limit,
    String? id = '',
    String? email = '',
    String? name = '',
    String? cep = '',
    String? complemento = '',
    String? cpf = '',
    String? password = '',
    String? address = '',
  }) async {
    final baseUrl = ServicosJaAPIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'List User',
      apiUrl: '$baseUrl/collection/User',
      callType: ApiCallType.GET,
      headers: {
        'Authorization':
            'Bearer YzkzOWYyYzVjNDk4M2Y5M2YxNjkwN2UwNDAzNjlkNTA6MjkwZWNmNWM5ZThhNGMxNWY0ZTBkZDUzOWUzMWFlNjM=',
      },
      params: {
        'filter': filter,
        'sort': sort,
        'skip': skip,
        'limit': limit,
        'id': id,
        'email': email,
        'name': name,
        'cep': cep,
        'complemento': complemento,
        'cpf': cpf,
        'password': password,
        'address': address,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class CreateNewUserCall {
  Future<ApiCallResponse> call({
    String? email = '',
    String? name = '',
    String? cep = '',
    String? complemento = '',
    String? cpf = '',
    String? password = '',
    dynamic addressJson,
  }) async {
    final baseUrl = ServicosJaAPIGroup.getBaseUrl();

    final address = _serializeJson(addressJson);
    final ffApiRequestBody = '''
{
  "email": "${escapeStringForJson(email)}",
  "name": "${escapeStringForJson(name)}",
  "cep": "${escapeStringForJson(cep)}",
  "complemento": "${escapeStringForJson(complemento)}",
  "cpf": "${escapeStringForJson(cpf)}",
  "password": "${escapeStringForJson(password)}",
  "address": $address
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Create new User',
      apiUrl: '$baseUrl/collection/User',
      callType: ApiCallType.POST,
      headers: {
        'Authorization':
            'Bearer YzkzOWYyYzVjNDk4M2Y5M2YxNjkwN2UwNDAzNjlkNTA6MjkwZWNmNWM5ZThhNGMxNWY0ZTBkZDUzOWUzMWFlNjM=',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: true,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class CreateNewProfessionalCall {
  Future<ApiCallResponse> call({
    String? email = '',
    String? name = '',
    String? cep = '',
    String? complemento = '',
    String? cpf = '',
    String? password = '',
    dynamic addressJson,
    String? profession = '',
  }) async {
    final baseUrl = ServicosJaAPIGroup.getBaseUrl();

    final address = _serializeJson(addressJson);
    final ffApiRequestBody = '''
{
  "email": "${escapeStringForJson(email)}",
  "name": "${escapeStringForJson(name)}",
  "profession": "${escapeStringForJson(profession)}",
  "cep": "${escapeStringForJson(cep)}",
  "complemento": "${escapeStringForJson(complemento)}",
  "cpf": "${escapeStringForJson(cpf)}",
  "password": "${escapeStringForJson(password)}",
  "address": $address
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Create new professional',
      apiUrl: '$baseUrl/collection/Professional',
      callType: ApiCallType.POST,
      headers: {
        'Authorization':
            'Bearer YzkzOWYyYzVjNDk4M2Y5M2YxNjkwN2UwNDAzNjlkNTA6MjkwZWNmNWM5ZThhNGMxNWY0ZTBkZDUzOWUzMWFlNjM=',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: true,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetProfessionalByProfissaoCall {
  Future<ApiCallResponse> call({
    String? prof = '',
  }) async {
    final baseUrl = ServicosJaAPIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Get professional by profissao',
      apiUrl: '$baseUrl/collection/Professional/$prof',
      callType: ApiCallType.GET,
      headers: {
        'Authorization':
            'Bearer YzkzOWYyYzVjNDk4M2Y5M2YxNjkwN2UwNDAzNjlkNTA6MjkwZWNmNWM5ZThhNGMxNWY0ZTBkZDUzOWUzMWFlNjM=',
      },
      params: {
        '_ftsx': prof,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class UpdateUserCall {
  Future<ApiCallResponse> call({
    String? id = '',
  }) async {
    final baseUrl = ServicosJaAPIGroup.getBaseUrl();

    const ffApiRequestBody = '''
{
  "email": "teste1@email.com",
  "name": "Perobas",
  "cep": "10000001",
  "complemento": "casa amaryellow",
  "cpf": "12345678902",
  "password": "123321",
  "address": {}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Update User',
      apiUrl: '$baseUrl/collection/User/$id',
      callType: ApiCallType.PATCH,
      headers: {
        'Authorization':
            'Bearer YzkzOWYyYzVjNDk4M2Y5M2YxNjkwN2UwNDAzNjlkNTA6MjkwZWNmNWM5ZThhNGMxNWY0ZTBkZDUzOWUzMWFlNjM=',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ReplaceUserCall {
  Future<ApiCallResponse> call({
    String? id = '',
    String? email = '',
    String? name = '',
    String? cep = '',
    String? complemento = '',
    String? cpf = '',
    String? password = '',
    dynamic addressJson,
  }) async {
    final baseUrl = ServicosJaAPIGroup.getBaseUrl();

    final address = _serializeJson(addressJson);
    final ffApiRequestBody = '''
{
  "email": "${escapeStringForJson(email)}",
  "name": "${escapeStringForJson(name)}",
  "cep": "${escapeStringForJson(cep)}",
  "complemento": "${escapeStringForJson(complemento)}",
  "cpf": "${escapeStringForJson(cpf)}",
  "password": "${escapeStringForJson(password)}",
  "address": $address
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Replace User',
      apiUrl: '$baseUrl/collection/User/$id',
      callType: ApiCallType.PUT,
      headers: {
        'Authorization':
            'Bearer YzkzOWYyYzVjNDk4M2Y5M2YxNjkwN2UwNDAzNjlkNTA6MjkwZWNmNWM5ZThhNGMxNWY0ZTBkZDUzOWUzMWFlNjM=',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

/// End ServicosJa  API Group Code

class TesteCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'teste',
      apiUrl: 'https://gw.apiflow.online/q/f7ee28341c75455cbdf87ec574d37076',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _toEncodable(dynamic item) {
  return item;
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("List serialization failed. Returning empty list.");
    }
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}

String? escapeStringForJson(String? input) {
  if (input == null) {
    return null;
  }
  return input
      .replaceAll('\\', '\\\\')
      .replaceAll('"', '\\"')
      .replaceAll('\n', '\\n')
      .replaceAll('\t', '\\t');
}
