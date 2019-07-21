import 'dart:ui';

class ZodiacSign {
  String name;
  String cardPath;
  String logoPath;
  Color signColor;
  String signTimeSpan;

  ZodiacSign(
    this.name,
    this.cardPath,
    this.logoPath,
    this.signColor,
    this.signTimeSpan,
  );

  String get getName => name;
  String get getCardPath => cardPath;
  String get getLogoPath => logoPath;
  Color get getColor => signColor;
  String get getSpan => signTimeSpan;
}

final ZodiacSign aquarius = ZodiacSign(
  "Aquarius",
  "assets/images/aquarius.png",
  "assets/strokes/aquarius.png",
  Color(0xFF4297C6),
  "January 20 to February 18",
);

final ZodiacSign aries = ZodiacSign(
  "Aries",
  "assets/images/aries.png",
  "assets/strokes/aries.png",
  Color(0xFFEFA91B),
  "March 21 to April 19",
);

final ZodiacSign cancer = ZodiacSign(
  "Cancer",
  "assets/images/cancer.png",
  "assets/strokes/cancer.png",
  Color(0xFFD83554),
  "June 21 to July 22",
);

final ZodiacSign capricorn = ZodiacSign(
  "Capricorn",
  "assets/images/capricorn.png",
  "assets/strokes/capricorn.png",
  Color(0xFF9276B7),
  "December 22 to January 19",
);

final ZodiacSign gemini = ZodiacSign(
  "Gemini",
  "assets/images/gemini.png",
  "assets/strokes/gemini.png",
  Color(0xFFE29A59),
  "May 21 to June 20",
);

final ZodiacSign leo = ZodiacSign(
  "Leo",
  "assets/images/leo.png",
  "assets/strokes/leo.png",
  Color(0xFFDB6412),
  "July 23 to August 23",
);

final ZodiacSign libra = ZodiacSign(
  "Libra",
  "assets/images/libra.png",
  "assets/strokes/libra.png",
  Color(0xFF26AEC4),
  "September 23 to October 22",
);

final ZodiacSign pisces = ZodiacSign(
  "Pisces",
  "assets/images/pisces.png",
  "assets/strokes/pisces.png",
  Color(0xFFDE4A46),
  "February 19 to March 20",
);

final ZodiacSign sagittarius = ZodiacSign(
  "Sagittarius",
  "assets/images/sagittarius.png",
  "assets/strokes/sagittarius.png",
  Color(0xFFB7294B),
  "November 22 to December 21",
);

final ZodiacSign scorpio = ZodiacSign(
  "Scorpio",
  "assets/images/scorpio.png",
  "assets/strokes/scorpio.png",
  Color(0xFFC13A2F),
  "October 23 to November 21",
);

final ZodiacSign taurus = ZodiacSign(
  "Taurus",
  "assets/images/taurus.png",
  "assets/strokes/taurus.png",
  Color(0xFFBF6F47),
  "April 20 to May 20",
);

final ZodiacSign virgo = ZodiacSign(
  "Virgo",
  "assets/images/virgo.png",
  "assets/strokes/virgo.png",
  Color(0xFF179677),
  "August 24 to September 22",
);

final List<ZodiacSign> signs = [
  aquarius,
  aries,
  cancer,
  capricorn,
  gemini,
  leo,
  libra,
  pisces,
  sagittarius,
  scorpio,
  taurus,
  virgo,
];
