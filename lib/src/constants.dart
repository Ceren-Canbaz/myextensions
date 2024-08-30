// ignore_for_file: constant_identifier_names

class RegexConstants {
  // Email regex (genel bir örnek)
  static const String EMAIL_REGEX = r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$';

  // Parola regex (en az 8 karakter, 1 büyük harf, 1 küçük harf ve 1 rakam)
  static const String PASSWORD_REGEX =
      r'^(?=.*[A-Z])(?=.*[a-z])(?=.*\d)[A-Za-z\d]{8,}$';

  // Sadece rakam içeren string regex (örneğin, telefon numarası)
  static const String ONLY_NUMBERS_REGEX = r'^\d+$';

  // URL regex (genel bir örnek)
  static const String URL_REGEX = r'^(https?|ftp):\/\/[^\s/$.?#].[^\s]*$';

  // Türkçe karakterleri destekleyen isim regex'i (Ad/Soyad için)
  static const String NAME_SURNAME_REGEX = r"^[a-zA-ZğüşöçİĞÜŞÖÇ]+$";

  // Boşlukları kontrol eden regex (örneğin, kullanıcı adı veya şifre için)
  static const String NO_WHITESPACE_REGEX = r'^\S+$';

  // Posta Kodu (Sadece 5 rakam içeren bir örnek)
  static const String POSTAL_CODE_REGEX = r'^\d{5}$';
}
