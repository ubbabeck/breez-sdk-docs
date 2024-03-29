import 'package:breez_sdk/breez_sdk.dart';
import 'package:breez_sdk/bridge_generated.dart';

Future<void> getLspInfo() async {
  // ANCHOR: get-lsp-info
  String? lspId = await BreezSDK().lspId();
  LspInformation? lspInfo = await BreezSDK().lspInfo();
  print(lspId);
  print(lspInfo);
  // ANCHOR_END: get-lsp-info
}

Future<List<LspInformation>> listLsps() async {
  // ANCHOR: list-lsps
  List<LspInformation> availableLsps = await BreezSDK().listLsps();
  // ANCHOR_END: list-lsps
  return availableLsps;
}

Future<void> connectLsp(String lspId) async {
  // ANCHOR: connect-lsp
  await BreezSDK().connectLSP(lspId);
  // ANCHOR_END: connect-lsp
}