import 'dart:convert';
import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class CriarClienteCall {
  static Future<ApiCallResponse> call({
    String? email = '',
    String? name = '',
    String? cep = '',
    String? complemento = '',
    String? cpf = '',
    String? password = '',
    String? address = '',
    String? city = '',
  }) async {
    final ffApiRequestBody = '''
{
  "email": "${escapeStringForJson(email)}",
  "name": "${escapeStringForJson(name)}",
  "cep": "${escapeStringForJson(cep)}",
  "complemento": "${escapeStringForJson(complemento)}",
  "cpf": "${escapeStringForJson(cpf)}",
  "password": "${escapeStringForJson(password)}",
  "address": "${escapeStringForJson(address)}",
  "city": "${escapeStringForJson(city)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Criar cliente',
      apiUrl: 'https://api-n006.onrender.com/api/cadastro',
      callType: ApiCallType.POST,
      headers: {},
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

class CriarProfissionalCall {
  static Future<ApiCallResponse> call({
    String? email = '',
    String? name = '',
    String? profession = '',
    String? address = '',
    String? cep = '',
    String? complemento = '',
    String? password = '',
    String? cpf = '',
    String? valor = '',
    String? city = '',
  }) async {
    final ffApiRequestBody = '''
{
  "email": "${escapeStringForJson(email)}",
  "name": "${escapeStringForJson(name)}",
  "profession": "${escapeStringForJson(profession)}",
  "cep": "${escapeStringForJson(cep)}",
  "complemento": "${escapeStringForJson(complemento)}",
  "cpf": "${escapeStringForJson(cpf)}",
  "password": "${escapeStringForJson(password)}",
  "valor": "${escapeStringForJson(valor)}",
  "address": "${escapeStringForJson(address)}",
  "city": "${escapeStringForJson(city)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Criar profissional',
      apiUrl: 'https://api2-ojk4.onrender.com/api/cadastroProfissional',
      callType: ApiCallType.POST,
      headers: {},
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

class BuscarPorProfissaoCall {
  static Future<ApiCallResponse> call({
    String? professions = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Buscar por profissao',
      apiUrl:
          'https://api3-398l.onrender.com/api/professionals?professions={professions}',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'professions': professions,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static List<String>? nome(dynamic response) => (getJsonField(
        response,
        r'''$[*].name''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? professions(dynamic response) => (getJsonField(
        response,
        r'''$[:].profession''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? email(dynamic response) => (getJsonField(
        response,
        r'''$[:].email''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? nomes2(dynamic response) => (getJsonField(
        response,
        r'''$[:].name''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List? data(dynamic response) => getJsonField(
        response,
        r'''$[*]''',
        true,
      ) as List?;
  static List<String>? valor(dynamic response) => (getJsonField(
        response,
        r'''$[:].valor''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class GETServicosCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'GET servicos',
      apiUrl: 'https://api4-pkjo.onrender.com/api/services/',
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

class POSTServicosCall {
  static Future<ApiCallResponse> call({
    String? emailUser = '',
    String? emailProf = '',
    double? valor,
    String? hora = '',
    String? loc = '',
    String? status = '',
    String? descricao = '',
  }) async {
    final ffApiRequestBody = '''
{
  "email_user": "${escapeStringForJson(emailUser)}",
  "email_prof": "${escapeStringForJson(emailProf)}",
  "valor": $valor,
  "hora": "${escapeStringForJson(hora)}",
  "loc": "${escapeStringForJson(loc)}",
  "status": "${escapeStringForJson(status)}",
  "descricao": "${escapeStringForJson(descricao)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'POST servicos',
      apiUrl: 'https://api4-pkjo.onrender.com/api/services/',
      callType: ApiCallType.POST,
      headers: {},
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
