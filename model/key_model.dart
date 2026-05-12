enum KeyCategory { letter, number, special }

// Es pot aprovar perfectament sense fer servir aquesta classe.
// Simplement, si vols fer servir un enum, te'l dono fet.
// Si pel que sigui volguessis recorrer tot l'enum pots fer servir:
// *******************************************
// **           AppKey.values               **
// *******************************************

enum AppKey {
  // Definim els valors de l'enum amb les seves propietats
  keyD("D", KeyCategory.letter),
  keyA("A", KeyCategory.letter),
  keyM("M", KeyCategory.letter),
  key2("2", KeyCategory.number),
  shift("^", KeyCategory.special),
  backspace("<", KeyCategory.special);

  // Propietats internes de cada opció de l'enum
  final String label;
  final KeyCategory category;

  // Constructor constant obligatori
  const AppKey(this.label, this.category);

  // Mètodes per saber el tipus de lletra.
  bool get isLetter => category == KeyCategory.letter;
  bool get isNumber => category == KeyCategory.number;
  bool get isSpecial => category == KeyCategory.special;

  // Em permet crear un enum des de l'String del label.
  static AppKey fromString(String lletraRebuda) {
    if (lletraRebuda == "^\n_") {
      lletraRebuda = "^";
    }
    return AppKey.values.firstWhere(
      (tecla) => tecla.label.toUpperCase() == lletraRebuda.toUpperCase(),
      orElse: () => AppKey.keyD,
    );
  }
}
