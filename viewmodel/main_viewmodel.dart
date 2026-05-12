import 'package:flutter/material.dart';
import '../model/general_app_state.dart'; // Per fitxers
import '../model/key_model.dart';

class MainViewModel extends ChangeNotifier {
  // 1. EL MODEL (Les dades de la app).
  GeneralAppState _estatGeneralApp;
  GeneralAppState get estatGeneralApp => _estatGeneralApp;

  // Per estàndards de desacoblament model-viewmodel
  // és millor que el constructor rebi les classes d'estats, no que les crei.
  // creem les instancies d'estat al main.
  MainViewModel(this._estatGeneralApp); //{}

  // FUNCIONS AUXILIARS.
  // Esborra la darrera lletra d'un String. Et serà útil...
  String deleteLast(String strInput) {
    if (strInput.isNotEmpty) {
      return strInput.substring(0, strInput.length - 1);
    }
    return "";
  }

  // FUNCIONS DE LA LÒGICA.
  void invertirColorsTeclat() {
    // TODO La lògica
    // Nofificar a qui estigui escoltant els canvis

  }



  // TODO resta de funcions de la lògica i callbacks.
  // Nofificar a qui estigui escoltant els canvis
}
