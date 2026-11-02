

// class GetHash {

//   Uint8List getHash(Uint8List seed, String seedKeyName) {
//     Uint8List sSeed = Uint8List(16);

//     switch (seedKeyName) {
//       case "KOEL_AUTO_BS4":
//       case "KOEL_CPCB4_MID_HP_ECU":
//         sSeed = _hexStringToByteArray("15FBED0C4AFCF8770385D4475BFB9F35");
//         break;

//       case "Sanitas_BOSCH_BS6_PROD":
//         sSeed = _hexStringToByteArray("F633E29B600729855EEB398C199BBE88");
//         break;

//       case "KOEL_CPCB4_HIGH_HP_ECU":
//         sSeed = _hexStringToByteArray("11EFF5AC7163FECC1225B994B70A0257");
//         break;

//       case "KOEL_CPCB4_LOW_HP_ECU":
//         sSeed = _hexStringToByteArray("1D61F1BCB3E83A7284E8BF2981DE7ED7");
//         break;
//     }

//     final combined = Uint8List(sSeed.length + seed.length);
//     combined.setAll(0, sSeed);
//     combined.setAll(sSeed.length, seed);

//     final digest = RIPEMD160Digest();
//     return digest.process(combined);
//   }

//   Uint8List _hexStringToByteArray(String hex) {
//     hex = hex.replaceAll(" ", "");
//     if (hex.length % 2 != 0) hex = "0$hex";

//     final result = Uint8List(hex.length ~/ 2);

//     for (int i = 0; i < hex.length; i += 2) {
//       result[i ~/ 2] = int.parse(hex.substring(i, i + 2), radix: 16);
//     }

//     return result;
//   }
// }