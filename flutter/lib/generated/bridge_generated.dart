// AUTO GENERATED FILE, DO NOT EDIT.
// Generated by `flutter_rust_bridge`@ 1.79.0.
// ignore_for_file: non_constant_identifier_names, unused_element, duplicate_ignore, directives_ordering, curly_braces_in_flow_control_structures, unnecessary_lambdas, slash_for_doc_comments, prefer_const_literals_to_create_immutables, implicit_dynamic_list_literal, duplicate_import, unused_import, unnecessary_import, prefer_single_quotes, prefer_const_constructors, use_super_parameters, always_use_package_imports, annotate_overrides, invalid_use_of_protected_member, constant_identifier_names, invalid_use_of_internal_member, prefer_is_empty, unnecessary_const

import "bridge_definitions.dart";
import 'dart:convert';
import 'dart:async';
import 'package:meta/meta.dart';
import 'package:flutter_rust_bridge/flutter_rust_bridge.dart';
import '../ffi.io.dart' if (dart.library.html) '../ffi.web.dart';
import 'bridge_generated.io.dart'
    if (dart.library.html) 'bridge_generated.web.dart';

class NativeImpl implements Native {
  final NativePlatform _platform;
  factory NativeImpl(ExternalLibrary dylib) =>
      NativeImpl.raw(NativePlatform(dylib));

  /// Only valid on web/WASM platforms.
  factory NativeImpl.wasm(FutureOr<WasmModule> module) =>
      NativeImpl(module as ExternalLibrary);
  NativeImpl.raw(this._platform);
  Future<String> initCashu({dynamic hint}) {
    return _platform.executeNormal(FlutterRustBridgeTask(
      callFfi: (port_) => _platform.inner.wire_init_cashu(port_),
      parseSuccessData: _wire2api_String,
      constMeta: kInitCashuConstMeta,
      argValues: [],
      hint: hint,
    ));
  }

  FlutterRustBridgeTaskConstMeta get kInitCashuConstMeta =>
      const FlutterRustBridgeTaskConstMeta(
        debugName: "init_cashu",
        argNames: [],
      );

  Stream<int> getCashuBalance({dynamic hint}) {
    return _platform.executeStream(FlutterRustBridgeTask(
      callFfi: (port_) => _platform.inner.wire_get_cashu_balance(port_),
      parseSuccessData: _wire2api_u64,
      constMeta: kGetCashuBalanceConstMeta,
      argValues: [],
      hint: hint,
    ));
  }

  FlutterRustBridgeTaskConstMeta get kGetCashuBalanceConstMeta =>
      const FlutterRustBridgeTaskConstMeta(
        debugName: "get_cashu_balance",
        argNames: [],
      );

  Stream<int> cashuMintTokens(
      {required int amount, required String hash, dynamic hint}) {
    var arg0 = _platform.api2wire_u64(amount);
    var arg1 = _platform.api2wire_String(hash);
    return _platform.executeStream(FlutterRustBridgeTask(
      callFfi: (port_) =>
          _platform.inner.wire_cashu_mint_tokens(port_, arg0, arg1),
      parseSuccessData: _wire2api_u64,
      constMeta: kCashuMintTokensConstMeta,
      argValues: [amount, hash],
      hint: hint,
    ));
  }

  FlutterRustBridgeTaskConstMeta get kCashuMintTokensConstMeta =>
      const FlutterRustBridgeTaskConstMeta(
        debugName: "cashu_mint_tokens",
        argNames: ["amount", "hash"],
      );

  Stream<FlutterPaymentRequest> getCashuMintPaymentRequest(
      {required int amount, dynamic hint}) {
    var arg0 = _platform.api2wire_u64(amount);
    return _platform.executeStream(FlutterRustBridgeTask(
      callFfi: (port_) =>
          _platform.inner.wire_get_cashu_mint_payment_request(port_, arg0),
      parseSuccessData: _wire2api_flutter_payment_request,
      constMeta: kGetCashuMintPaymentRequestConstMeta,
      argValues: [amount],
      hint: hint,
    ));
  }

  FlutterRustBridgeTaskConstMeta get kGetCashuMintPaymentRequestConstMeta =>
      const FlutterRustBridgeTaskConstMeta(
        debugName: "get_cashu_mint_payment_request",
        argNames: ["amount"],
      );

  Future<FlutterInvoice> decodeInvoice(
      {required String invoice, dynamic hint}) {
    var arg0 = _platform.api2wire_String(invoice);
    return _platform.executeNormal(FlutterRustBridgeTask(
      callFfi: (port_) => _platform.inner.wire_decode_invoice(port_, arg0),
      parseSuccessData: _wire2api_flutter_invoice,
      constMeta: kDecodeInvoiceConstMeta,
      argValues: [invoice],
      hint: hint,
    ));
  }

  FlutterRustBridgeTaskConstMeta get kDecodeInvoiceConstMeta =>
      const FlutterRustBridgeTaskConstMeta(
        debugName: "decode_invoice",
        argNames: ["invoice"],
      );

  Stream<bool> cashuPayInvoice({required String invoice, dynamic hint}) {
    var arg0 = _platform.api2wire_String(invoice);
    return _platform.executeStream(FlutterRustBridgeTask(
      callFfi: (port_) => _platform.inner.wire_cashu_pay_invoice(port_, arg0),
      parseSuccessData: _wire2api_bool,
      constMeta: kCashuPayInvoiceConstMeta,
      argValues: [invoice],
      hint: hint,
    ));
  }

  FlutterRustBridgeTaskConstMeta get kCashuPayInvoiceConstMeta =>
      const FlutterRustBridgeTaskConstMeta(
        debugName: "cashu_pay_invoice",
        argNames: ["invoice"],
      );

  Future<void> joinFederation({required String federation, dynamic hint}) {
    var arg0 = _platform.api2wire_String(federation);
    return _platform.executeNormal(FlutterRustBridgeTask(
      callFfi: (port_) => _platform.inner.wire_join_federation(port_, arg0),
      parseSuccessData: _wire2api_unit,
      constMeta: kJoinFederationConstMeta,
      argValues: [federation],
      hint: hint,
    ));
  }

  FlutterRustBridgeTaskConstMeta get kJoinFederationConstMeta =>
      const FlutterRustBridgeTaskConstMeta(
        debugName: "join_federation",
        argNames: ["federation"],
      );

  Future<FedimintPaymentRequest> getFedimintPaymentRequest(
      {required int amount, dynamic hint}) {
    var arg0 = _platform.api2wire_u64(amount);
    return _platform.executeNormal(FlutterRustBridgeTask(
      callFfi: (port_) =>
          _platform.inner.wire_get_fedimint_payment_request(port_, arg0),
      parseSuccessData: _wire2api_fedimint_payment_request,
      constMeta: kGetFedimintPaymentRequestConstMeta,
      argValues: [amount],
      hint: hint,
    ));
  }

  FlutterRustBridgeTaskConstMeta get kGetFedimintPaymentRequestConstMeta =>
      const FlutterRustBridgeTaskConstMeta(
        debugName: "get_fedimint_payment_request",
        argNames: ["amount"],
      );

  Future<int> fedimintMintTokens(
      {required int amount, required String operationId, dynamic hint}) {
    var arg0 = _platform.api2wire_u64(amount);
    var arg1 = _platform.api2wire_String(operationId);
    return _platform.executeNormal(FlutterRustBridgeTask(
      callFfi: (port_) =>
          _platform.inner.wire_fedimint_mint_tokens(port_, arg0, arg1),
      parseSuccessData: _wire2api_u64,
      constMeta: kFedimintMintTokensConstMeta,
      argValues: [amount, operationId],
      hint: hint,
    ));
  }

  FlutterRustBridgeTaskConstMeta get kFedimintMintTokensConstMeta =>
      const FlutterRustBridgeTaskConstMeta(
        debugName: "fedimint_mint_tokens",
        argNames: ["amount", "operationId"],
      );

  Stream<int> getFedimintBalance({dynamic hint}) {
    return _platform.executeStream(FlutterRustBridgeTask(
      callFfi: (port_) => _platform.inner.wire_get_fedimint_balance(port_),
      parseSuccessData: _wire2api_u64,
      constMeta: kGetFedimintBalanceConstMeta,
      argValues: [],
      hint: hint,
    ));
  }

  FlutterRustBridgeTaskConstMeta get kGetFedimintBalanceConstMeta =>
      const FlutterRustBridgeTaskConstMeta(
        debugName: "get_fedimint_balance",
        argNames: [],
      );

  Future<bool> fedimintPayInvoice({required String invoice, dynamic hint}) {
    var arg0 = _platform.api2wire_String(invoice);
    return _platform.executeNormal(FlutterRustBridgeTask(
      callFfi: (port_) =>
          _platform.inner.wire_fedimint_pay_invoice(port_, arg0),
      parseSuccessData: _wire2api_bool,
      constMeta: kFedimintPayInvoiceConstMeta,
      argValues: [invoice],
      hint: hint,
    ));
  }

  FlutterRustBridgeTaskConstMeta get kFedimintPayInvoiceConstMeta =>
      const FlutterRustBridgeTaskConstMeta(
        debugName: "fedimint_pay_invoice",
        argNames: ["invoice"],
      );

  Stream<int> receiveToken({required String token, dynamic hint}) {
    var arg0 = _platform.api2wire_String(token);
    return _platform.executeStream(FlutterRustBridgeTask(
      callFfi: (port_) => _platform.inner.wire_receive_token(port_, arg0),
      parseSuccessData: _wire2api_u64,
      constMeta: kReceiveTokenConstMeta,
      argValues: [token],
      hint: hint,
    ));
  }

  FlutterRustBridgeTaskConstMeta get kReceiveTokenConstMeta =>
      const FlutterRustBridgeTaskConstMeta(
        debugName: "receive_token",
        argNames: ["token"],
      );

  Future<double> getBtcprice({dynamic hint}) {
    return _platform.executeNormal(FlutterRustBridgeTask(
      callFfi: (port_) => _platform.inner.wire_get_btcprice(port_),
      parseSuccessData: _wire2api_f64,
      constMeta: kGetBtcpriceConstMeta,
      argValues: [],
      hint: hint,
    ));
  }

  FlutterRustBridgeTaskConstMeta get kGetBtcpriceConstMeta =>
      const FlutterRustBridgeTaskConstMeta(
        debugName: "get_btcprice",
        argNames: [],
      );

  void dispose() {
    _platform.dispose();
  }
// Section: wire2api

  String _wire2api_String(dynamic raw) {
    return raw as String;
  }

  bool _wire2api_bool(dynamic raw) {
    return raw as bool;
  }

  double _wire2api_f64(dynamic raw) {
    return raw as double;
  }

  FedimintPaymentRequest _wire2api_fedimint_payment_request(dynamic raw) {
    final arr = raw as List<dynamic>;
    if (arr.length != 2)
      throw Exception('unexpected arr length: expect 2 but see ${arr.length}');
    return FedimintPaymentRequest(
      pr: _wire2api_String(arr[0]),
      operationId: _wire2api_String(arr[1]),
    );
  }

  FlutterInvoice _wire2api_flutter_invoice(dynamic raw) {
    final arr = raw as List<dynamic>;
    if (arr.length != 3)
      throw Exception('unexpected arr length: expect 3 but see ${arr.length}');
    return FlutterInvoice(
      pr: _wire2api_String(arr[0]),
      amountSats: _wire2api_u64(arr[1]),
      expiryTime: _wire2api_u64(arr[2]),
    );
  }

  FlutterPaymentRequest _wire2api_flutter_payment_request(dynamic raw) {
    final arr = raw as List<dynamic>;
    if (arr.length != 2)
      throw Exception('unexpected arr length: expect 2 but see ${arr.length}');
    return FlutterPaymentRequest(
      pr: _wire2api_String(arr[0]),
      hash: _wire2api_String(arr[1]),
    );
  }

  int _wire2api_u64(dynamic raw) {
    return castInt(raw);
  }

  int _wire2api_u8(dynamic raw) {
    return raw as int;
  }

  Uint8List _wire2api_uint_8_list(dynamic raw) {
    return raw as Uint8List;
  }

  void _wire2api_unit(dynamic raw) {
    return;
  }
}

// Section: api2wire

@protected
int api2wire_u8(int raw) {
  return raw;
}

// Section: finalizer
